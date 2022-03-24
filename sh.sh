#!/data/data/com.termux/files/usr/bin/bash

clear

echo .
echo .
echo .
echo .
echo .
echo .GitHub.com/g0dm0de1337
echo .
echo .
echo .
echo .
echo .Payload.bin 2 Boot img ..perfekt4Magisk
sleep 3
echo .
echo .
echo -go to your SD-card
echo .
echo -create a folder with "Boot" as name
echo .
echo -unzip your OTA File &
echo .
echo -paste your payload.bin in your "Boot" folder
sleep 7
echo .
echo .
echo .if your file is not in the folder yet,
echo .break off this script with crtl+c !!
sleep 7
echo .
echo .
echo .
echo .have you finished everything ??
sleep 2
echo .
echo .SURE ??
sleep 3
echo .then wait 5 seconds until we start
echo .
echo .
echo .
sleep 5
echo .
echo . 
echo .Allow the next Termux Pop-up !!

cd $HOME
termux-setup-storage
sleep 6
ls
sleep 3
clear


pkg up -y
pkg install git -y
pkg install python -y
git clone https://GitHub.com/g0dm0de1337/termux_dumper

cd /sdcard/Boot
ls
sleep 3
clear
cp payload.bin $HOME/termux_dumper
echo .
echo .WE copy your payload.bin
echo .in the right folder
echo .
sleep 7
clear
cd $HOME
cd termux_dumper
chmod +x *
ls
sleep 3
pip install --upgrade pip
pip install protobuf
pip install -r requirements.txt


clear

echo .
echo .
echo .
echo .
echo .
echo .GitHub.com/g0dm0de1337
echo .



echo .
echo .
echo .
python --version
sleep 3

echo .copy the next lines, and paste it here 
echo ENTER
sleep 7
clear

echo .
echo .
echo .
echo  cd $HOME/termux_payload
echo .
echo .
echo  python payload_dumper.py payload.bin
sleep 3
echo .
echo .wait for done..
echo .
echo .
sleep 5
echo .
echo . 
echo  cd $HOME/termux_dumper/output
echo .
echo .
echo  cp boot.img /sdcard/Boot/
echo .
echo .
echo .
sleep 7

exit
