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

# Screenshot Capture into current directory
adb exec-out screencap -p > "screenshot_$(date +"%Y-%m-%d_%H.%M.%S").png"

# Android Logcat an app filtered by package name using pid
adb logcat --pid=$(adb shell pidof -s com.your.app)

# Android Logcat by package name, saving into a file, while outputting to stdout
adb logcat --pid=$(adb shell pidof -s com.your.app) | tee logs.txt
