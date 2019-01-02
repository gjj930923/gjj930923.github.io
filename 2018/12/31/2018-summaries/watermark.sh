#!/bin/bash
mogrify -quality 30 *.jpg
for each in *.jpg
do
s=`du -k $each | awk '{print $1}'`
if [ $s -gt 10 ]; then
composite -gravity southeast ../../img/icon.jpeg $each $each 2>/dev/null
echo "$each: done!"
fi
done
exit 0
