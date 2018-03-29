for f in *.png; do
    echo $f
    extension="${f##*.}"
    filename="${f%.*}"
    new_filename="${filename}-preview"

    convert $f -resize 25% ${new_filename}.${extension}
    pngnq -n 256 ${new_filename}.${extension} && pngcrush ${new_filename}-nq8.${extension} ../output/${new_filename}.${extension}
done
