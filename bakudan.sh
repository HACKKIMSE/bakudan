#!/bin/bash
clear
echo -e "\e[4;31m M4ZART Productions !!! \e[0m"
echo -e "\e[1;34m Presents \e[0m"
echo -e "\e[1;32m Bakudan Demo Mode \e[0m"
echo "Press Enter To Continue"
read a1
if [[ -s updatefile.m4zart ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet
apt install toilet
apt install python
pip install -r requirements.txt
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
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border M4ZART
echo -e "\e[4;34m This Bomber Was Created By M4ZART \e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: harunbusiness@aol.com \e[0m"
echo -e "\e[1;32m       Instagram: https://instagram.com/ichbinharun \e[0m"
echo -e "\e[4;32m   YouTube Page: https://www.youtube.com/HarunMISTIK \e[0m"
echo " "
echo "Press 1 To  Start New SMS Bomber (recommended)"
echo "Press 2 To  Start Call Bomber "
echo "Press 3 To  Update (Works On Linux And Linux Emulators) "
echo "Press 4 To  Start MutliSms Bomber"
echo "Press 5 To  Start Old SMS Bomber"
echo "Press 6 To  Protect Your Number "
echo "Press 9 To  Exit "

read ch
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
echo 'Call Bomb'> call.xxx
python3 newbomber.py call
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 3 ];then
clear
apt install git -y
echo -e "\e[1;34m Downloading Latest Files..."
git clone https://github.com/m4zart/bakudan/
if [[ -s bakudan/bakudan.sh ]];then
cd bakudan
cp -r -f * .. > temp
cd ..
rm -rf  bakudan >> temp
rm updatefile.m4zart >> temp
rm temp
chmod +x bakudan.sh
fi
echo -e "\e[1;32m All The Required Packages Will Be Installed..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6
./TBomb.sh
exit
if [ $ch -eq 5 ];then
clear
cd bakudan
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 demobomb.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 4 ];then
clear
cd bakudan
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python multidemobomb.py
exit 0
elif [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 lock.py
python3 newbomber.py
exit 0
elif [ $ch -eq 7 ];then
clear
echo"updating bakudan...."
cd
rm -rf bakudan
clear
git clone https://github.com/m4zart/bakudan/
cd bakudan
chmod +x bakudan.sh
bash bakudan.sh
exit 0
elif [ $ch -eq 6 ];then
clear
echo -e "\e[1;34m Only Premium..."
exit
elif [ $ch -eq 9 ];then
clear
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
