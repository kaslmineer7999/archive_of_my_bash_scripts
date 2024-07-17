#!/usr/bin/env bash
echo "$PATH" > ~/USERPATH
export PATH="$PREFIX/bin"
echo "updating repos MR. user okay"
sleep 2.3
pkg update -y &>/dev/null
echo -e "repos are updated :)\n"
echo "installing proot-distro MR. user okay"
sleep 2.3
pkg install proot-distro -y &>/dev/null
echo -e "\nproot-distro installed :)"
sleep 2.3
clear
echo "+====================================================================+"
echo "Hello And Welcome! To My Script That Makes using Proot-distro easier"
echo "THIS SCRIPT IS NOT BY PROOT-DISTRO PROJECT IT'S JUST BY KASLMINEER7999"
echo "+====================================================================+"
sleep 4.5
clear
echo "+=================================="
echo "Hello And Welcome! To My Script Tha"
echo "THIS SCRIPT IS NOT BY PROOT-DISTRO "
echo "+=================================="
sleep 2.4
clear
echo "+================"
echo "Hello And Welcome"
echo "THIS SCRIPT IS NO"
echo "+================"
sleep 1.6
clear
echo "Most Useful Distros You Can Install (to show the complete list hit ctrl + c to kill the script and then type 'pd ls') : "
echo "
 * Alpine Linux
Alias : alpine

 * debian (bookworm)
Alias : debian

 * Ubuntu (24.04 with broken snapd so you have to use debian apt repos or anything is not snapd)
Alias : ubuntu

 * Arch Linux (BTW)
Alias : archlinux

 * Debian (bullseye)
Alias: debian-oldstable

 * Artix Linux
Alias: artix
"
echo -e "Enter Here The Alias name To install the distro : \c\c"
read distroin
if [[ $distroin == "artix" ]] || [[ $distroin == "debian-oldstable" ]] || [[ $distroin == "archlinux" ]] || [[ $distroin == "ubuntu" ]] || [[ $distroin == "alpine" ]] || [[ $distroin == "debian" ]] || [[ $distroin == "deepin" ]] || [[ $distroin == "fedora" ]] || [[ $distroin == "manjaro" ]] || [[ $distroin == "openkylin" ]] || [[ $distroin == "opensuse" ]] || [[ $distroin == "pardus" ]] || [[ $distroin == "ubuntu-oldlts" ]] || [[ $distroin == "void" ]]
then
echo "installing distro"
pd i $distroin 2>/dev/null
pd clean 2>/dev/null
touch $PATH/$distroin
echo "pd sh $distroin --shared-tmp" > $PATH/$distroin
chmod +rwx $PATH/$distroin
echo -e "complete\n"
echo "makeing the uninstaller"
echo -e "echo 'uninstalling'\npd rm $distroin 2>/dev/null\nrm -rf $PATH/$distroin\nrm -rf $PATH/del$distroin\necho 'complete'" > $PATH/del$distroin
chmod +rwx $PATH/del$distroin
echo -e "complete\n"
echo "now enter '$distroin' to enter the distro or to uninstall the distro enter 'del$distroin' :)"
USERPATH="$(cat ~/USERPATH)" ;export PATH="$USERPATH"
else
echo "you may have a typo or you typed a distro that is there yet"
USERPATH="$(cat ~/USERPATH)" ;export PATH="$USERPATH"
false
fi
