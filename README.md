# Multi-Species Analysis of Neuronal nAChRs and Their Affinity to Venom Toxins and Ligands
α4β2 and α7 nAChRs

## 📄 About the Project

This repository contains the data, methods, models, and results for the study:
**"A Multi-Species Analysis of Structural and Functional Variations in Neuronal Nicotinic Acetylcholine Receptors and Their Affinity Towards Venom Toxins and Pharmacological Ligands"**.

The study investigates the structural features and binding affinities of neuronal nicotinic acetylcholine receptors (nAChRs), particularly **α7** and **(α4)₂(β2)₃** subtypes, across 10 species. It analyzes their interaction with **snake venom 3FTX toxins** and **pharmacological ligands** using molecular docking, dynamics simulations, and pathway analyses.

## 🔬 Research Focus

- Structural comparison of α7 and (α4)₂(β2)₃ nAChRs in humans, mice, rats, rabbits, monkeys, pigs, dogs, cattle, goats, and sheep.
- Binding studies of nAChRs with:
  - Snake venom-derived **three-finger toxins (3FTX)**.
  - Known **agonists and antagonists** from PubChem.
- Evolutionary and phylogenetic analysis.
- Ligand-receptor interaction modeling using **AutoDock4**, **HADDOCK**, and **GROMACS**.
- Pathway enrichment via **KEGG** database.

## 🧬 Organisms Studied

- Homo sapiens (Human)
- Sus scrofa (Pig)
- Macaca mulatta (Monkey)
- Bos taurus (Cattle)
- Canis lupus familiaris (Dog)
- Capra hircus (Goat)
- Oryctolagus cuniculus (Rabbit)
- Mus musculus (Mouse)
- Rattus norvegicus (Rat)
- Ovis aries (Sheep)

## 🛠 Tools & Databases Used

| Tool               | Purpose                                     |
|--------------------|---------------------------------------------|
| UniProt            | Sequence retrieval                         |
| SWISS-MODEL , PDB and MEMPROT       | Homology modeling                          |
| AutoDock4          | Protein-ligand docking                     |
| HADDOCK 2.4        | Protein-protein docking (3FTX with nAChRs) |
| GROMACS 2025.1     | Molecular dynamics simulations             |
| KEGG               | Pathway analysis                           |
| LigPlot+, Chimera ,BDS  | Interaction visualization                  |
| Clustal Omega/W    | MSA and Phylogenetics                      |

## 🧪 Methods Summary

1. **Literature Search**: For selecting sequences, ligands, and active binding residues.
2. **Phylogenetic Analysis**: Conducted with ClustalW and visualized in iTOL.
3. **Structure Modeling**: Using homology modeling templates (e.g., PDB: 7EKT, 5KXI).
4. **Docking Studies**:
   - Protein-protein (nAChRs–3FTX) via HADDOCK.
   - Protein-ligand (agonists/antagonists) via AutoDock4.
5. **Simulation & Analysis**:
   - RMSD, binding affinity, interaction residues.
   - 2D and 3D interaction diagrams via LigPlot+ and Discovery Studio.
6. **KEGG Pathways**: Functional relevance of receptor interactions.

## 📊 Key Findings

- 3FTX toxins demonstrated **higher binding affinity** to α7 nAChRs compared to acetylcholine.
- Species-specific variations suggest evolutionary adaptations in receptor architecture.
- Certain non-toxin ligands showed strong binding potential, indicating therapeutic promise.
- KEGG pathway analysis supports the role of nAChRs in neurodegeneration, addiction, inflammation, and cognitive function.

## 📥 Data Availability

All raw data, models, codes for program running and results are available in this GitHub repository and the supplememtary file of the manuscript. 

## 📬 Contact

email: 'tdhruva970@gmail.com'