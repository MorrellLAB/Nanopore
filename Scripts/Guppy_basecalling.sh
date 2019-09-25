#/usr/bin/env sh
#   Written by Peter L. Morrell
#   07 August 2019, Falcon Heights, MN

set -euf - o pipefail

#   The configuation file contains the input file path sample name
source Config

OUTPUT="$OUT_DIR"/"$SAMPLE_NAME"/basecalled_"$GUPPY_VERSION"

mkdir -p $OUTPUT
$GUPPY --recursive --input_path $FAST5 --save_path $OUTPUT --flowcell $FLOWCELL --kit $KIT
