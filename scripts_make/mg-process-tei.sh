source ../ENV

cd $REPOSITORIES/mercure-galant-github/
git pull origin gh-pages
cd ../..

rm $REPOSITORIES/mercure-galant-sources-github/tei/log.txt
touch $REPOSITORIES/mercure-galant-sources-github/tei/log.txt

echo "CHECK TEI FILES"

echo "Fichiers en erreur :" >> $REPOSITORIES/mercure-galant-sources-github/tei/log.txt
DIR=$REPOSITORIES/mercure-galant-github/xml \
sh $ROOT/sources-processors/mg-tei/xml-check.sh >> $REPOSITORIES/mercure-galant-sources-github/tei/log.txt 2>&1

echo "" >> $REPOSITORIES/mercure-galant-sources-github/tei/log.txt 2>&1

echo "PROCESS TEI FILES"

SAXONJAR=$REPOSITORIES/SaxonHE12-4J/saxon-he-12.4.jar \
TEI_LIVRAISONS=$REPOSITORIES/mercure-galant-sources-github/tei/livraisons \
TEI_ARTICLES=$REPOSITORIES/mercure-galant-sources-github/tei/articles \
MGGHXML=$REPOSITORIES/mercure-galant-github/xml \
sh $ROOT/sources-processors/mg-tei/mg-process-tei.sh >> $REPOSITORIES/mercure-galant-sources-github/tei/log.txt 2>&1

cd $REPOSITORIES/mercure-galant-sources-github
git pull origin main
git add --all ; git commit -m "🌴" ; git push -u origin main