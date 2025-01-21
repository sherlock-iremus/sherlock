SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

python3 $SCRIPT_DIR/../sources-processors/euterpe-make-nakala-cache.py \
    --cache caches/euterpe/images.yaml \