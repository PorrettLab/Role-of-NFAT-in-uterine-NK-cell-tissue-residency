#!/bin/bash

#job script for a typical cellranger count run - GEX

#SBATCH --job-name=cellranger_count_UTx01_Bx03
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

cd /UTx/UTx01/Bx03/GEX/cell_ranger_pipepline_analysis

cellranger count --id=UTx01_Bx03 \
		 --transcriptome=/porrettlab/shared_coding_resources/references/refdata-cellranger-GRCh38-3.0.0 \
		 --fastqs=/path/to/fastq/files \
		 --sample=UTx01_Bx03_CS_3p


