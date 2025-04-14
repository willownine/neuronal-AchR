def extract_pdb_from_dlg(dlg_file_path, pdb_file_path):
    """
    Extracts the first docked conformation from an AutoDock .dlg file
    and writes it to a .pdb file.
    
    Parameters:
    dlg_file_path (str): Path to the .dlg file.
    pdb_file_path (str): Path to save the resulting .pdb file.
    """
    with open(dlg_file_path, "r") as dlg_file:
        lines = dlg_file.readlines()

    # Extract lines corresponding to the first docked pose
    pdb_lines = []
    recording = False
    for line in lines:
        if line.startswith("DOCKED: ATOM") or line.startswith("DOCKED: HETATM"):
            pdb_lines.append(line.replace("DOCKED: ", ""))  # Clean up prefix
            recording = True
        elif recording and line.startswith("DOCKED: ENDMDL"):
            break  # Stop after the first model

    # Write to output .pdb file
    with open(pdb_file_path, "w") as pdb_file:
        pdb_file.writelines(pdb_lines)

# Example usage
dlg_file = "input.dlg"
pdb_file = "output.pdb"

extract_pdb_from_dlg(dlg_file, pdb_file)
