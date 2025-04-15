source ../ENV

mkdir -p $ROOT/caches/mg

# ReFAR::Personnes
python3 $ROOT/rdfizers/grist-2-crm.py \
    --grist_api_key $GRIST_API_KEY \
    --grist_doc_id 4NmEJA4z9EUBK2vYu2epCi \
    --grist_table_id 1 \
    --output_ttl $ROOT/out/ttl/grist/refar-personnes.ttl \
    --e32_uuid 81366968-0fc8-43f6-9a32-9609c19a33c0 \
    --rdf_type http://www.cidoc-crm.org/cidoc-crm/E21_Person