for f in $(ls $DIR/*.xml)
do
    xmllint $f >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo $(basename $f)
    fi
done