source ../ENV

mkdir -p $ROOT/caches/mg

cd $ROOT/rdfizers/grist-2-crm.cpp

conan remote add dice-group https://conan.dice-research.org/artifactory/api/conan/tentris --force
conan install conanfile.txt --build missing

#--grist_api_key $GRIST_API_KEY \
#--grist_doc_id 4NmEJA4z9EUBK2vYu2epCi \
#--grist_table_id 1 \
#--output_ttl $ROOT/out/ttl/grist/refar-personnes.ttl