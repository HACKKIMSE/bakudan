#!/bin/bash
clear
echo -e "\e[4;31m M4ZART Productions !!! \e[0m"
echo -e "\e[1;34m Presents \e[0m"
echo -e "\e[1;32m Lunar Demo Mode \e[0m"
echo "Press Enter To Continue"
read a1
if [[ -s updatefile.m4zart ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python curl -y
echo This Script Was Made By M4ZART >updatefile.m4zart
echo Requirements Installed....
echo Press Enter To Continue...
read upd
fi
while :
do
rm *.xxx >/dev/null 2>&1
clear
echo -e "\e[1;31m"
figlet Lunar DEMO
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border M4ZART
echo -e "\e[4;34m This Bomber Was Created By M4ZART \e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: harunbusiness@aol.com \e[0m"
echo -e "\e[1;32m       Instagram: https://instagram.com/ichbinharun \e[0m"
echo -e "\e[4;32m   YouTube Page: https://www.youtube.com/HarunMISTIK \e[0m"
echo " "
echo "Press 1 To  Start SMS Bomber "
echo "Press 2 To  Start MutliSms Bomber "
echo "Press 3 To  Start SpeedX Bomber (AD) "
echo "Press 4 To  Protect Your Number "
echo "Press 8 To  Update SpeedX Bomber "
echo "Press 9 To  Exit "
echo "Press 0 To  Update "
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 demobomb.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python multidemobomb.py
exit 0
elif [ $ch -eq 3 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 bomber.py
exit 0
elif [ $ch -eq 3 ];then
clear
echo"updating Lunars...."
cd
rm -rf Lunars
clear
git clone https://github.com/m4zart/Lunars/
cd Lunars
chmod +x lunar.sh
bash lunar.sh
exit 0
elif [ $ch -eq 4 ];then
clear
echo -e "\e[1;34m Only Premium..."
exit
elif [ $ch -eq 9 ];then
clear
elif [ $ch -eq 8 ];then
clear
cd
rm -rf TBomb
clear
https://github.com/SpeedX/TBomb
cd TBomb
python3 bomber.py
rm *.xxx >/dev/null 2>&1
echo -e "\e[1;31m"
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border M4ZART
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: harunbusiness@aol.com \e[0m"
echo -e "\e[1;32m       Instagram: https://instagram.com/ichbinharun \e[0m"
exit 0
read a3
clear
fi
done
