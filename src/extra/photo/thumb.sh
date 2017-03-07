#!/bin/bash
# conversor de ECW a TIF
THUMBS_FOLDER=/home/jose/html/Leaflet.Photo.Sax/local_file_example/Photos_Thumbnail
for f in  `find //home/jose/html/Leaflet.Photo.Sax/local_file_example/Photos -name *.jpg`
do
 echo "Convirtiendo $f" 
 OUTFILE=$(basename "$f" .jpg)
 convert -thumbnail 200 $f $THUMBS_FOLDER/"$OUTFILE".jpg
done
