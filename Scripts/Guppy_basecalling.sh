#/usr/bin/env sh
#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN

#PBS -l nodes=1:ppn=24:gpu=2,walltime=12:00:00 
#PBS -m abe 
#PBS -M pmorrell@umn.edu 
#PBS -q v100
#PBS -N guppy_basecalling

# load modules for use of GPU
module load cuda cuda-sdk

set -euf - o pipefail

#   The configuation file contains the input file path sample name
CONFIG=/scratch.global/pmorrell/WBDC355/WBDC355_Run5/Config
source $CONFIG

#   Output should be written back to data directory
OUTPUT="$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

#   Guppy will base call from FAST5 and output compressed fastq, using GPUs on the v100 nodes
#   Must qsub from a Mesabi node
mkdir -p $OUTPUT
$GUPPY --recursive --input_path $FAST5 --compress_fastq --num_callers 4 --save_path $OUTPUT --device "cuda:0,1" --flowcell $FLOWCELL --kit $KIT
