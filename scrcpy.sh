# screen copy
# mirror android to computer
scrcpy

# screen copy
# Screen recording with scrcpy
# this command is usable as is, it automatically sets the date in the correct format, no edit required
scrcpy --no-audio --record "screen-recording_$(date +"%Y-%m-%d_%H.%M.%S").mp4"
