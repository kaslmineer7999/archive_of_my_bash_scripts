#!/usr/bin/env bash
apt install tree || sudo apt install tree
clear
echo "===================================="
echo "|This is DDoser.sh by Administartor|"
echo "|THIS IS 200% NOT LEGIT TRUST ME   |"
echo "===================================="
sleep 10
clear
echo "WHAT IS THE SERVER IP ADDRESS OR DOMAIN"
read DOMAINIP
clear
echo "WHAT PACKET SIZE TO ATTACK WITH"
read PACKSIZE
clear
echo "WHAT IS THE TIME OF THE ATTACK"
read ATTACKTIME
clear
echo "ATTACKING"
rm -rf REPORT_ATTACK.HTML
touch REPORT_ATTACK.HTML
echo "<html>" >> REPORT_ATTACK.HTML
echo "<h1>Report of DDos attack</h1>" >> REPORT_ATTACK.HTML
echo "<pre>" >> REPORT_ATTACK.HTML
ping -c ${ATTACKTIME} -s ${PACKSIZE} ${DOMAINIP} | tee TEMP.TXT
tree | tee -a TEMP.TXT
tree | tee -a TEMP.TXT
tree | tee -a TEMP.TXT
echo -p $(cat TEMP.TXT)\n >> REPORT_ATTACK.HTML
echo "</pre>" >> REPORT_ATTACK.HTML
echo "THE SERVER IS SHUTDOWN ^_^"
sleep 7
clear
