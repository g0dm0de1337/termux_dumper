#!/system/bin/sh
apt update && apt upgrade -y
pkg install python -y
pip install --upgrade pip
python --version

