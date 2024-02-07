SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ssh tbottini@data-iremus.huma-num.fr "mkdir -p /home/tbottini/sherlock/ttl"
# POST STATIC USER DATA
scp "$SCRIPTS_DIR/../data-ttl/data-sherlock-users.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X POST -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/data-sherlock-users.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/users"

# DELETE OBSOLETE GENERATED USER DATA
scp "$SCRIPTS_DIR/../out/ttl/common/orcid-generated-names-old.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X DELETE -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/orcid-generated-names-old.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/users"

# POST GENERATED USER DATA
scp "$SCRIPTS_DIR/../out/ttl/common/orcid-generated-names.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X POST -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/orcid-generated-names.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/users"
