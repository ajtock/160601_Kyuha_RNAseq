#!/bin/bash

source ~/.profile
source activate RNAseq_mapping
snakemake -p --cores 24
source deactivate
