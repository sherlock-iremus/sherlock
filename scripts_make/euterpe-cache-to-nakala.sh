SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

python3 sources-processors/cache-to-nakala.py \
    --file_dir $OUT_DIR/euterpe-data/images/ \
    --cache $SCRIPT_DIR/../caches/nakala/euterpe.yaml \
    --collection 10.34847/nkl.5d4f85n8 \
