source ../ENV

SOURCES=$REPOSITORIES/mercure-galant-sources-github/
SHERLOCK=$REPOSITORIES/mercure-galant-sources-sherlock/
cd $SOURCES
git pull origin main
cd ../..

rm $SHERLOCK/tei/log.txt
touch $SHERLOCK/tei/log.txt

echo "CHECK TEI FILES"

echo "Fichiers en erreur :" >> $SHERLOCK/tei/log.txt
DIR=$SOURCES/tei-edition \
sh $ROOT/sources-processors/mg-tei/xml-check.sh #>> $SHERLOCK/tei/log.txt #2>&1

echo "" >> $SHERLOCK/tei/log.txt 2>&1

echo "PROCESS TEI FILES"

SAXONJAR=$REPOSITORIES/SaxonHE12-4J/saxon-he-12.4.jar \
TEI_LIVRAISONS=$SHERLOCK/tei/livraisons \
TEI_ARTICLES=$SHERLOCK/tei/articles \
MGGHXML=$SOURCES/tei-edition \
sh $ROOT/sources-processors/mg-tei/mg-process-tei.sh #>> $SHERLOCK/tei/log.txt #2>&1

cd $SHERLOCK
git add --all ; git commit -m "🌴" ; git push -u origin main