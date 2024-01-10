SCRIPTS_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APPS=$SCRIPTS_DIR/..
TEMP=$SCRIPTS_DIR/../temp_prod

cd $APPS/voix-du-mercure-galant
gatsby clean
gatsby build --prefix-paths --verbose
cd -

rm -rf $TEMP/apache/public_html/voix-du-mercure-galant
mkdir -p $TEMP/apache/public_html
mv $APPS/voix-du-mercure-galant/public $TEMP/apache/public_html/voix-du-mercure-galant
