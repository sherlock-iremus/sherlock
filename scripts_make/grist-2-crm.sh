source ../ENV

mkdir -p $ROOT/caches/mg

python3 $ROOT/rdfizers/grist-2-crm.py \
    --grist_api_key $GRIST_API_KEY \
    --grist_doc_id 4NmEJA4z9EUBK2vYu2epCi \
    --grist_table_id 1 \
    --output_ttl $ROOT/out/ttl/grist/refar-personnes.ttl