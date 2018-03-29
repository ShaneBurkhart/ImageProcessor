for f in input/*.png; do
    echo $f
    extension="${f##*.}"
    filename="${f%.*}"
    pngnq -n 256 $f && pngcrush ${filename}-nq8.${extension} output/$f
done
