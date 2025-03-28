source ../ENV

mkdir -p $ROOT/out/ttl/nocodb/
mkdir -p $ROOT/caches/nocodb/

python3 $ROOT/rdfizers/nocodb/E21.py \
    --output_ttl $ROOT/out/ttl/refar/personnes.ttl \
    --cache $ROOT/caches/nocodb/e21.yaml \
    --nocodb_token $NOCODB_TOKEN \
    --corpus_nocodb_id 2 # 81366968-0fc8-43f6-9a32-9609c19a33c0