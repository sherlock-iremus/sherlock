ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

mkdir -p $ROOT/out/ttl/common/

python3 $ROOT/rdfizers/orcid-user2rdf.py \
    --output_ttl $ROOT/out/ttl/common/orcid-generated-names.ttl \
    --output_old_ttl $ROOT/out/ttl/common/orcid-generated-names-old.ttl