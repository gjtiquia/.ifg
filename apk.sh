# Get badging information (identity / install metadata)
# package name, version code, sdk version, activity
# aapt = Android Asset Packaging Tool
# aapt is part of build-tools
aapt dump badging app.apk

# Get apk package name
# aapt2 is part of build-tools
aapt2 dump packagename app.apk
