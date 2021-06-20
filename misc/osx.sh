# Disable MacOS auto connect for Bluetooth audio
sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist DontPageAudioDevices 1

# Reduce Google Drive cache size
sudo defaults write /Library/Preferences/com.google.drivefs.settings ContentCacheMaxKbytes -int 500000
