#!/bin/bash
# Ensure Shizuku is running and permissions are granted
adb shell shizuku ps

# Install APK using adb (via Shizuku)
APK_PATH="/storage/emulated/0/Download/shizuku.apk"

if [[ -f "$APK_PATH" ]]; then
    echo "Installing $APK_PATH..."
    adb install "$APK_PATH" || echo "Installation failed."
else
    echo "APK not found at $APK_PATH"
fi
