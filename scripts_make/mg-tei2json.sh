ROOT=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/..)

echo "Fichiers en erreur :"
DIR=$ROOT/in/mercure-galant-github/xml \
sh $ROOT/sources-processors/mg-tei/xml-check.sh

SAXONJAR=$ROOT/apps-and-deps/SaxonHE12-4J/saxon-he-12.4.jar \
TEI_LIVRAISONS=$ROOT/out/files/mg/tei/livraisons \
TEI_ARTICLES=$ROOT/out/files/mg/tei/articles \
JSON_ARTICLES=$ROOT/out/files/mg/json/articles \
MGGHXML=$ROOT/in/mercure-galant-github/xml \
sh $ROOT/sources-processors/mg-tei/mg-tei-to-json.sh