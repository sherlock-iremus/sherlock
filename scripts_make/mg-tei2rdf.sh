source ../ENV

cd $REPOSITORIES/mercure-galant-github/
git pull origin gh-pages
cd ../..

mkdir -p $ROOT/out/ttl/mg/

python3 $ROOT/rdfizers/mg-tei2rdf.py \
    --tei $REPOSITORIES/mercure-galant-github/xml \
    --output_ttl $ROOT/out/ttl/mg/tei.ttl \
    --cache_tei $ROOT/caches/mg/tei.yaml