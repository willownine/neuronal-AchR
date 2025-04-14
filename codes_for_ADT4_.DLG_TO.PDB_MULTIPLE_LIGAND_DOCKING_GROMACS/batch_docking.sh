#!/bin/bash

# Paths
RECEPTOR="receptor.pdbqt"
GRID_FILE="grid.gpf"
TEMPLATE_DPF="dock.dpf"
LIGAND_DIR="/home/dr-harish/docking_folder"
RESULTS_DIR="results"

# Create results directory if it doesn't exist
mkdir -p $RESULTS_DIR

# Run AutoGrid to generate maps (only once)
autogrid4 -p $GRID_FILE -l $RESULTS_DIR/grid.glg

# Iterate over each ligand in the folder
for LIGAND in $LIGAND_DIR/*.pdbqt; do
    # Extract ligand name without extension
    BASENAME=$(basename "$LIGAND" .pdbqt)

    # Create a specific DPF for each ligand
    DPF_FILE="$RESULTS_DIR/${BASENAME}.dpf"
    DLG_FILE="$RESULTS_DIR/${BASENAME}.dlg"

    # Prepare the DPF file for this ligand
    sed "s/LIGAND_PLACEHOLDER/${BASENAME}/g" $TEMPLATE_DPF > $DPF_FILE

    # Run AutoDock for this ligand
    autodock4 -p $DPF_FILE -l $DLG_FILE

    echo "Docking completed for: $BASENAME"
done

echo "Batch docking complete. Check results in $RESULTS_DIR"
