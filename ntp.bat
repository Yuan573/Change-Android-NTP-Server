@echo off
echo This is your old setting:
adb shell settings get global ntp_server
pause
SET /P NTP=Please Enter New NTP Server:
adb shell settings put global ntp_server %NTP%
echo This is your new setting:  (Plase reboot device to apply)
adb shell settings get global ntp_server
pause