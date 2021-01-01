for file in *.txt

do
  mv -- "$file" "$(basename -- "$file" .txt).$(date +%Y%m%d)"
done
