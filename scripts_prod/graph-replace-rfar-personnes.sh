SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ssh tbottini@data-iremus.huma-num.fr "mkdir -p /home/tbottini/sherlock/ttl/rfar"
scp "$SCRIPTS_DIR/../out/ttl/rfar/personnes.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl/rfar/personnes.ttl
ssh tbottini@data-iremus.huma-num.fr "curl -X PUT -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/rfar/personnes.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/rfar-personnes"