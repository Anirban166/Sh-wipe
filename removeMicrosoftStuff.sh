# Anirban166 | 22/01/2021

# Files: 
# Deleting auto-update Launch Agents: (For e.g., com.microsoft.update.agent)
find Library/LaunchAgents/ -type f -name '*com\.microsoft\.update*.plist' -exec rm {} +
# Preferences and PrivelegedHelperTools up next: (.plist and .helper files)
find Library/Preferences/ Library/PrivelegedHelperTools/ -type f -name '*com\.microsoft\.autoupdate*' -exec rm {} +
# Lastly, relevant files in 'Saved Application State': (need to quote path for the spaces in the directory)
find "Library/Saved Application State/" -type f -name '*com\.microsoft\.autoupdate*.plist' -exec rm {} +
# (For most of the files, the pattern is 'com.microsoft.autoupdate')

# Folders:
find Library/ApplicationSupport/Microsoft/MAU2 Library/ApplicationSupport/Microsoft/MAU2.0 -type d -exec rm -rf {} +
find "Library/ApplicationSupport/Microsoft AU Daemon" -type d -exec rm -rf {} +