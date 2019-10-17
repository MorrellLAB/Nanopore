#/usr/bin/env sh
#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN

#PBS -l nodes=1:ppn=24:gpus=2,walltime=24:00:00 
#PBS -m abe 
#PBS -M pmorrell@umn.edu 
#PBS -q k40

module load cuda cuda-sdk

set -euf - o pipefail

#   The configuation file contains the input file path sample name
CONFIG=/panfs/roc/scratch/pmorrell/WBDC355/WBDC355_Run8/WBDC355_Run8_basecalling_Config
source $CONFIG

OUTPUT="$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

mkdir -p $OUTPUT
$GUPPY --recursive --input_path $FAST5 --save_path $OUTPUT --flowcell $FLOWCELL --kit $KIT
