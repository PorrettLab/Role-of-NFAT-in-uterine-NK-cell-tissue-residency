#!/bin/bash

#job script for a typical cellranger count run - CITE-Seq

#SBATCH --job-name=cellranger_count_HBx10
#SBATCH --output=res.out
#SBATCH --error=res.err
#SBATCH --partition=pascalnodes
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=10GB
#SBATCH --ntasks=1
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=mail@uabmc.edu

module load CellRanger/6.1.1

cd /HBx/HBx10/CITE-Seq/cellranger_pipeline_analysis

cellranger count --id=HBx10 \
		--libraries=/HBx/HBx10/CITE-Seq/cellranger_pipeline_analysis/library.csv \
		--transcriptome=/porrettlab/shared_coding_resources/references/refdata-cellranger-GRCh38-3.0.0 \
		--feature-ref=/porrettlab/shared_coding_resources/TotalSeq_B_Human_Universal_Cocktail_V1_399904_Antibody_reference_UMI_counting_CellRanger.csv

