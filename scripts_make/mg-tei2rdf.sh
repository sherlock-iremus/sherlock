ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

mkdir -p $ROOT/out/ttl/mg/

python3 $ROOT/rdfizers/mg-tei2rdf.py \
    --tei $ROOT/in/mercure-galant-github/xml \
    --output_ttl $ROOT/out/ttl/mg/tei.ttl \
    --cache_tei $ROOT/caches/mg/tei.yaml