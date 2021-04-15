#!/bin/bash
# STAR version 2.7.0d

# Use STAR to generate T2T_Col reference genome index
# with T2T_Col.genes.gtf annotation

conda activate RNAseq_mapping

STAR --runThreadN 48 \
     --runMode genomeGenerate \
     --genomeDir /home/ajt200/analysis/160601_Kyuha_RNAseq/snakemake_RNAseq_STAR_T2T_Col/data/index/ \
     --genomeFastaFiles T2T_Col.fa \
     --sjdbGTFfile T2T_Col.genes.gtf \
     --sjdbOverhang 100

conda deactivate
