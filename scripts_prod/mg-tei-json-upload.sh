ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

ssh tbottini@cchum-kvm-data-iremus.in2p3.fr "rm -rf sherlock/apache/public_html/files/mercure-galant/articles"
ssh tbottini@cchum-kvm-data-iremus.in2p3.fr "mkdir -p sherlock/apache/public_html/files/mercure-galant/articles"
scp -r $ROOT/out/files/mg/json/articles/* tbottini@cchum-kvm-data-iremus.in2p3.fr:sherlock/apache/public_html/files/mercure-galant/articles