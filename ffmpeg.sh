# smart convert any file to any format
ffmpeg -i input.mov output.mp4

# mp4 to gif
# results in smaller file size
ffmpeg -i input.mp4 -filter_complex "[0:v] fps=12,scale=480:-1:flags=lanczos,split [a][b];[a] palettegen [p];[b][p] paletteuse" output.gif

# measure audio volume
ffmpeg -i input.mp4 -hide_banner -f lavfi -filter:a loudnorm=print_format=json -f null /dev/null 2>&1
