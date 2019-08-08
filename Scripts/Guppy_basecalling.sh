#/usr/bin/env sh
#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN

set -euf - o pipefail

#   The configuation file contains the input file path sample name
source Config

GUPPY=/Applications/ont-guppy-cpu/bin/guppy_basecaller
OUTPUT=/Users/pmorrell/Downloads/Guppy_Output/"$SAMPLE_NAME"/basecalled

mkdir -p $OUTPUT
$GUPPY --input_path $FAST5 --save_path $OUTPUT --flowcell $FLOWCELL --kit $KIT
