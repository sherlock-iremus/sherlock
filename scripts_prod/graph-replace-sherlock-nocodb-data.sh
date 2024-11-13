ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

rm $ROOT/out/ttl/sherlock-nocodb-data.ttl
cat $ROOT/out/ttl/nocodb/*.ttl > $ROOT/out/ttl/nocodb/sherlock-nocodb-data.ttl

scp "$ROOT/out/ttl/nocodb/sherlock-nocodb-data.ttl" tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/ttl/
ssh tbottini@data-iremus.huma-num.fr "curl -X PUT -H Content-Type:text/turtle -T /home/tbottini/sherlock/ttl/sherlock-nocodb-data.ttl -G http://localhost:3030/iremus/data?graph=http://data-iremus.huma-num.fr/graph/sherlock-nocodb-data"

rm $ROOT/out/ttl/nocodb/sherlock-nocodb-data.ttl