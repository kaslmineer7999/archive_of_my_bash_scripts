#!/usr/bib/env bash
echo "+===========================================+"
echo "the fluxbox WM automated installer for termux"
echo "I Hope that you enjoyed this script <:-)"
echo "+===========================================+"
sleep 2.3
clear
echo -e "enter 'yes' for verbose mode and 'no' for no verbose mode : \c\c"
read verbosemode
if [[ $verbosemode = "yes" ]]
then
echo "updating repos (verbose mode)"
pkg update -y
echo "complete"
echo "installing x11-repo and again updating repos (verbose mode)"
pkg install x11-repo -y
pkg update -y
echo "complete"
echo "installing termux-x11-nightly and fluxbox and pulseaudio packages (verbose mode)"
pkg install termux-x11-nightly fluxbox pulseaudio -y
echo "complete"
echo "installing curl and wget (verbose mode)"
pkg install curl wget -y
echo "complete"
echo "downloading apk of termux:X11 (verbose mode)"
curl https://github.com/termux/termux-x11/releases/download/nightly/app-universal-debug.apk --output ~/x11t.apk
echo "complete"
echo "installing the termux:X11 apk!!!!!! (verbose mode)"
echo "click on 'install' on the next screen after 3.2 secennds!!!!!!! (verbose mode)"
sleep 3.2
pkg install ~/x11t.apk
echo "complete"
echo "makeing the launch script (verbose mode)"
echo "#!/data/data/com.termux/files/usr/bin/bash
kill -9 $(pgrep -f "termux.x11") 2>/dev/null
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &
sleep 3
am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity > /dev/null 2>&1
sleep 1
export PULSE_SERVER=127.0.0.1
env DISPLAY=:0 dbus-launch --exit-with-session fluxbox & > /dev/null 2>&1
exit 0
" | tee $PATH/fluxboxWMstart
chmod +rwx $PATH/fluxboxWMstart
echo "complete"
echo "you can now start the flusbox WM with the command 'fluxboxWMstart'"
else
echo "updating repos (non-verbose mode)"
pkg update -y &>/dev/null
echo "complete"
echo "installing x11-repo and again updating repos (non-verbose mode)"
pkg install x11-repo -y &>/dev/null
pkg update -y &>/dev/null
echo "complete"
echo "installing termux-x11-nightly and fluxbox and pulseaudio packages (non-verbose mode)"
pkg install termux-x11-nightly fluxbox pulseaudio -y &>/dev/null
echo "complete"
echo "installing curl and wget (non-verbose mode)"
pkg install curl wget -y &>/dev/null
echo "complete"
echo "downloading apk of termux:X11 (non-verbose mode)"
curl https://github.com/termux/termux-x11/releases/download/nightly/app-universal-debug.apk --output ~/x11t.apk
echo "complete"
echo "installing the termux:X11 apk!!!!!! (non-verbose mode)"
echo "click on 'install' on the next screen after 3.2 secennds!!!!!!! (non-verbose mode)"
sleep 3.2
pkg install ~/x11t.apk
echo "complete"
echo "makeing the launch script (verbose mode)"
touch $PATH/fluxboxWMstart
echo "#!/data/data/com.termux/files/usr/bin/bash
kill -9 $(pgrep -f "termux.x11") 2>/dev/null
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &
sleep 3
am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity > /dev/null 2>&1
sleep 1
export PULSE_SERVER=127.0.0.1
env DISPLAY=:0 dbus-launch --exit-with-session fluxbox & > /dev/null 2>&1
exit 0
" > $PATH/fluxboxWMstart
chmod +rwx $PATH/fluxboxWMstart
echo "complete"
echo "you can now start the flusbox WM with the command 'fluxboxWMstart'"
