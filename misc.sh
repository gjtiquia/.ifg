# list files by time
# -h = [h]uman readable 
# -la = [l]ong list with hidden files ([a]ll)
# -t = sort by [t]ime, newest on top
# | head -n = show top 20 lines
ls -hlat | head -n 20

# set files in current directory last modified
# YYYYMMDDhhmm
touch -t 202606072300 ./***

# (MacOS) set creation date MM/DD/YYYY for all files in current directory
SetFile -d "10/25/2023 15:30:45" *

# (MacOS) set modification date MM/DD/YYYY for all files in current directory
SetFile -m "10/25/2023 15:30:45" *

# photo metadata set date - step 1
# set all photos in current directory to the same starting time
exiftool -AllDates="2023:10:25 15:00:00+08:00" -overwrite_original .

# photo metadata set date - step 2
# set timezone
exiftool -OffsetTimeOriginal="+08:00" -OffsetTimeDigitized="+08:00" -overwrite_original .

# photo metadata set date - step 3
# set time by one second forward for each photo in filename order
exiftool '-AllDates+<0:0:$filesequence' -FileOrder Filename -overwrite_original .

# photo metadata set date - step 4
# set last created and last modified dates
# note: this does not copy the timezone unfortunately... should look into it # TODO
exiftool "-FileCreateDate<DateTimeOriginal" "-FileModifyDate<DateTimeOriginal" -overwrite_original .

# create folder / directory with current date and time
mkdir $(date +"%Y-%m-%d-%H%M")
