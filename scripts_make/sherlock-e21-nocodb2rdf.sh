source ../ENV

mkdir -p $ROOT/out/ttl/nocodb/
mkdir -p $ROOT/caches/nocodb/

python3 $ROOT/rdfizers/nocodb/E21.py \
    --output_ttl $ROOT/out/ttl/nocodb/e21.ttl \
    --cache $ROOT/caches/nocodb/e21.yaml \
    --nocodb_token $NOCODB_TOKEN