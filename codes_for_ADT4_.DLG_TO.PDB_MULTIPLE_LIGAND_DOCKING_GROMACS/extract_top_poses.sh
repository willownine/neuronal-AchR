#!/bin/bash

input_dir="/home/dhruva/my_docking_folder"
output_dir="/home/dhruva/top_pose_my_docking_folder"

mkdir -p "$output_dir"  # ensure output folder exists

for dlg in "$input_dir"/ligand*.dlg
do
  base=$(basename "$dlg" .dlg)
  echo "Processing $base.dlg..."

  # Extract DOCKED lines, remove 'DOCKED' keyword
  grep '^DOCKED' "$dlg" | cut -c9- > "$output_dir/$base.pdbqt"

  # Trim to 66 characters for PDB format
  cut -c-66 "$output_dir/$base.pdbqt" > "$output_dir/$base.pdb"

  # Extract only the first pose (up to first ENDMDL)
  awk '/ENDMDL/ { print; exit } { print }' "$output_dir/$base.pdb" > "$output_dir/${base}_top_pose.pdb"

  # Clean up intermediate files
  rm "$output_dir/$base.pdbqt" "$output_dir/$base.pdb"

  echo "Saved top pose: ${base}_top_pose.pdb"
done

