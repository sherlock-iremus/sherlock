SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

python3 sources-processors/images-mirror-collection-to-nakala.py \
    --pictures $OUT_DIR/euterpe-data/images/ \
    --cache $SCRIPT_DIR/../caches/euterpe/images.yaml \
    --collection 10.34847/nkl.5d4f85n8 \