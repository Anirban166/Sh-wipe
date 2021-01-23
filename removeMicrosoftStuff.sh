# Anirban166 | Last updated: 23/01/2021
# Shell script to remove unwanted files pertaining to Microsoft's auto-update service. (brought in by installation of software such as the Office Suite)

# Deleting auto-update Launch Agents: (For e.g., com.microsoft.update.agent)
find Library/LaunchAgents/ -type f -name '*com\.microsoft\.update*.plist' -exec rm {} +
# Preferences, PrivelegedHelperTools and Saved Application State up next: (.plist and .helper files)
find Library/Preferences/ Library/PrivelegedHelperTools/ "Library/Saved Application State/" -type f -name '*com\.microsoft\.autoupdate*' -exec rm {} +

# Recursively removing required folders:
find Library/ApplicationSupport/Microsoft/MAU2 Library/ApplicationSupport/Microsoft/MAU2.0 "Library/ApplicationSupport/Microsoft AU Daemon" -type d -exec rm -rf {} +