ROOT="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/..

mkdir -p $ROOT/caches/mg

python3 $ROOT/sources-processors/mg-estampes-id-cache.py \
    --cache caches/mg/id.yaml \