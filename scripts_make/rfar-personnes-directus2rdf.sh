ROOT="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/..

mkdir -p $ROOT/out/ttl/rfar
mkdir -p $ROOT/caches/rfar

rm $ROOT/out/ttl/rfar/personnes.ttl

source $ROOT/my-venv/bin/activate

python3 $ROOT/rdfizers/rfar-personnes-directus2ttl.py \
    --ttl $ROOT/out/ttl/rfar/personnes.ttl \
    --cache $ROOT/caches/rfar/personnes.yaml \
    --directus_secret $ROOT/secret/directus.rfar.yaml \