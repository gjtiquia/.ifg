# Connect device
adb connect [ip-address]

# Show all connected devices and also start adb server
adb devices

# Stop adb server
adb kill-server

# Reboot device
adb reboot

# Install apk
adb install [apk-name.apk]

# Uninstall apk
adb uninstall [package name]

# List installed packages
adb shell pm list packages -3

# Find package name
adb shell pm list packages -3 | grep [keyword]

# Start app with adb
adb shell monkey -p [package name] 1

# Stop app with command
adb shell am force-stop [package name]

