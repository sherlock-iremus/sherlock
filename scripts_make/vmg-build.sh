SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APPS=$SCRIPTS_DIR/..
TEMP=~/sherlock_temp

cd $REPOSITORIES/voix-du-mercure-galant
pnpm i
gatsby clean
gatsby build --prefix-paths --verbose
cd -

rm -rf $TEMP/apache/public_html/voix-du-mercure-galant
mkdir -p $TEMP/apache/public_html
mv $REPOSITORIES/voix-du-mercure-galant/public $TEMP/apache/public_html/voix-du-mercure-galant
