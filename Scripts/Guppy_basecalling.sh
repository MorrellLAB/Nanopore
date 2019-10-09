#/usr/bin/env sh
#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN

#PBS -l mem=2000mb,nodes=1:ppn=6,walltime=96:00:00 
#PBS -m abe 
#PBS -M pmorrell@umn.edu 
#PBS -q mesabi

set -euf - o pipefail

#   The configuation file contains the input file path sample name
CONFIG=/panfs/roc/scratch/pmorrell/WBDC355/WBDC355_Run8_basecalling_Config
source $CONFIG

OUTPUT="$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

mkdir -p $OUTPUT
$GUPPY --recursive --input_path $FAST5 --save_path $OUTPUT --flowcell $FLOWCELL --kit $KIT
