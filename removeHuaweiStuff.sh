# Anirban166 | 22/01/2021

# Removing required .plist files from the Launch Agents directory:
find Library/LaunchAgents/HWPortCfg.plist Library/LaunchAgents/ouc.plist -exec rm {} +

# Recursively removing redundant folders from the Startup Items directory:
find "Library/StartupItems/HWNetMgr" "Library/StartupItems/HWPortDetect" "Library/StartupItems/StartOuc" -exec rm -rf {} +

# Reboot system:
sudo shutdown -r 
