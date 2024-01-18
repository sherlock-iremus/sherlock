ROOT="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/..

NAKALA_API_URL=https://test.nakala.fr python3 sources-processors/images-mirror-collection-to-nakala.py \
    --pictures $ROOT/in/mercure-galant-estampes-github \
    --collection 10.34847/nkl.c2713x22 \
    --cache $ROOT/caches/mg/estampes-nakala.yaml \