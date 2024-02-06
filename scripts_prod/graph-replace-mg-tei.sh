SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ssh tbottini@data-iremus.huma-num.fr "mkdir -p /home/tbottini/sherlock/ttl/mg"
scp "$SCRIPTS_DIR/../out/ttl/mg/tei.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl/mg/tei.ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X PUT -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/mg/tei.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/mg-tei"