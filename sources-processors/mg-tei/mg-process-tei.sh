SCRIPTDIR=$(realpath $(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd))

trap "exit" INT

file_name () {
	filename=$(basename "$1")
	extension="${filename##*.}"
	filename="${filename%.*}"

	echo $filename
}

rm -rf $TEI_LIVRAISONS
mkdir -p $TEI_LIVRAISONS
rm -rf $TEI_ARTICLES
mkdir -p $TEI_ARTICLES

for f in $(ls $MGGHXML/*.xml)
do
  echo $f
  livraison_id=$(file_name $f)
  livraison_id="${livraison_id//MG-/}"
  echo LIVRAISON $livraison_id
  cp $f $TEI_LIVRAISONS/$livraison_id.xml
  
  # FRAGMENTATION DES FICHIERS TEI
  java -jar $SAXONJAR -s:$f -xsl:"$SCRIPTDIR"/fragment.xslt -o:$TEI_ARTICLES/TOKILL.xml
  rm $TEI_ARTICLES/TOKILL.xml

  # RENOMMAGE DES ARTICLES TEI
  for f in $(ls $TEI_ARTICLES/MG-$livraison_id*)
  do
    mv $f "${f//MG-/}"
  done

  # FORMATAGE DES FRAGMENTS TEI
  for f in $(ls $TEI_ARTICLES/$livraison_id*)
  do
    article_id=$(file_name $f)
    article_id="${article_id//MG-/}"

    mv $f $f.temp0
    xmllint $f.temp0 > $f.temp1
    tr -d "\n\r" < $f.temp1 > $f.temp2
    tr -s " " < $f.temp2 > $f
    rm $f.temp0
    rm $f.temp1
    rm $f.temp2

    mv $f $f.temp3
    xmllint --format $f.temp3 > $f
    rm $f.temp3
  done
done