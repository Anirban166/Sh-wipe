# Anirban166 | Last updated: 23/01/2021
# Shell script to remove the unwanted files and folders remnant after uninstalling the software for Huawei dongles' device drivers. 

# Removing required .plist files from the Launch Agents directory:
find Library/LaunchAgents/HWPortCfg.plist Library/LaunchAgents/ouc.plist -exec rm {} +

# Recursively removing redundant folders from the Startup Items directory:
find "Library/StartupItems/HWNetMgr" "Library/StartupItems/HWPortDetect" "Library/StartupItems/StartOuc" -exec rm -rf {} +

# Rebooting system:
sudo shutdown -r 