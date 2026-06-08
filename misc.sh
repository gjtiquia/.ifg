# set files in current directory last modified
# YYYYMMDDhhmm
touch -t 202606072300 ./***

# (MacOS) set creation date MM/DD/YYYY for all files in current directory
SetFile -d "10/25/2023 15:30:45" *

# (MacOS) set modification date MM/DD/YYYY for all files in current directory
SetFile -m "10/25/2023 15:30:45" *

# photo metadata set date - step 1
# set all photos in current directory to the same starting time
exiftool -AllDates="2023:10:25 15:00:00" -overwrite_original .

# photo metadata set date - step 2
# set time by one second forward for each photo in filename order
exiftool '-AllDates+<0:0:$filesequence' -FileOrder Filename -overwrite_original .

# photo metadata set date - step 3
# set last created and last modified dates
exiftool "-FileCreateDate<DateTimeOriginal" "-FileModifyDate<DateTimeOriginal" -overwrite_original .
