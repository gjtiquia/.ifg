# convert from jpg to png
# supports many other formats too
magick rose.jpg rose.png

# basic info
# like the image size
magick identify image.png

# detailed info
magick identify --verbose image.png

# resize
# can be used for basic image upscaling
magick input.png -resize 200% output.png

# resize (ignore aspect ratio)
# note the ! which ignores original aspect ratio
# by default, it preserves the aspect ratio
magick input.png -resize <width>x$<height>! output.png

# resize for pixel art
# suggested to use whole integer (200%/300%) to maintain pixel
magick input.png -filter Point -resize 700% output.png

# compress to the smallest possible while maintaining size and quality
# (suggested by Google)
magick input.jpg -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace sRGB output.jpg

# compress to a certain size
# it tries its best, but may not be exactly under the specified size, and if too low the quality may be bad
magick input.jpg -define jpeg:extent=150kb output.jpg
