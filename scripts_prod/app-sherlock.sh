ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

ssh-add

cd $ROOT/repositories/sherlock-app
pnpm run build

ssh tbottini@data-iremus.huma-num.fr "rm -rf /home/tbottini/sherlock/apache/public_html/sherlock/"
scp -r ./dist tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/apache/public_html/
ssh tbottini@data-iremus.huma-num.fr "mv /home/tbottini/sherlock/apache/public_html/dist/ /home/tbottini/sherlock/apache/public_html/sherlock/"

mkdir -p ~/Desktop/sherlock/apache/public_html/
rm -rf ~/Desktop/sherlock/apache/public_html/sherlock
cp -r ./dist ~/Desktop/sherlock/apache/public_html
mv ~/Desktop/sherlock/apache/public_html/dist ~/Desktop/sherlock/apache/public_html/sherlock

scp $ROOT/repositories/sherlock-app/.htaccess tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/apache/public_html/sherlock/