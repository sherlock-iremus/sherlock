source ../ENV
source $ROOT/my-venv/bin/activate

mkdir -p $ROOT/out/ttl/refar
mkdir -p $ROOT/caches/refar

rm $ROOT/out/ttl/refar/personnes.ttl

python3 $ROOT/reprise/refar-personnes-directus2nocodb.py \
    --cache $ROOT/caches/refar/personnes.yaml \
    --directus_email $DIRECTUS_REFAR_EMAIL \
    --directus_password $DIRECTUS_REFAR_PASSWORD \
    --directus_url $DIRECTUS_REFAR_URL \
    --nocodb_token $NOCODB_TOKEN