#! /bin/bash

tmpfile_fq=`mktemp`
cat in00.fq | ../src/fqu_cat/fqu_cat > $tmpfile_fq
d=`diff expected-fqu_cat-01 $tmpfile_fq`
rm $tmpfile_fq

if test z"$z" != z; then
  exit 1
else
  exit 0
fi
