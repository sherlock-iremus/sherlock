ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

mkdir -p $ROOT/out/ttl/users/

python3 $ROOT/rdfizers/orcid-user2rdf.py \
    --output_ttl $ROOT/out/ttl/users/orcid-generated-names.ttl \
    --output_old_ttl $ROOT/out/ttl/users/orcid-generated-names-old.ttl