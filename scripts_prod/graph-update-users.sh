SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ssh tbottini@data-iremus.huma-num.fr "mkdir -p /home/tbottini/sherlock/ttl"
scp "$SCRIPTS_DIR/../data-ttl/data-sherlock-users.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X POST -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/data-sherlock-users.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/users"