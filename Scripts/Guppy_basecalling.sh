#!/bin/bash
#PBS -l nodes=1:ppn=24:gpu=2,walltime=12:00:00 
#PBS -m abe 
#PBS -M gfrascar@umn.edu 
#PBS -q v100
#PBS -N guppy_basecalling

#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN
# load modules for use of GPU
module load cuda cuda-sdk
module load guppy/3.4.5

set -euf - o pipefail

#   The configuation file contains the input file path sample name
CONFIG=/scratch.global/gfrascar/WBDC355/Config_20200109_WBDC355_Run10
source $CONFIG

#   Output should be written back to data directory
OUTPUT="$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

#Check if the directory exists if not make it
mkdir -p $OUT_DIR "$OUT_DIR"/"$SAMPLE_NAME" "$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

#   Guppy will base call from FAST5 and output compressed fastq, using GPUs on the v100 nodes
#   Must qsub from a Mesabi node
#   The '-num_callers' specifies number of callers per GPU, '--device' specifies first 2 GPUs on node
#   Also using '--compress_fastq' for gzipped fastq output, so '*.fastq.gz'
mkdir -p $OUTPUT
$GUPPY --recursive --input_path $FAST5 --compress_fastq --verbose_logs --num_callers 12 --save_path $OUTPUT --device "cuda:0,1" --flowcell $FLOWCELL --kit $KIT
