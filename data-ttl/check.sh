for i in $(find . -name "*.ttl")
do
  echo " "
  echo $i
  ttl $i
done
