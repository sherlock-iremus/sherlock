SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

python3 sources-processors/files-to-cache.py \
    --file_dir $OUT_DIR/euterpe-data/images/ \
    --cache $SCRIPT_DIR/../caches/nakala/euterpe.yaml \