SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rsync -varz --delete -P $SCRIPTS_DIR/../temp_prod/apache/public_html/voix-du-mercure-galant tbottini@cchum-kvm-data-iremus.in2p3.fr:sherlock/apache/public_html/