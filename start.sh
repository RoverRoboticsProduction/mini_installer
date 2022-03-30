#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip -y
sudo apt-get install screen -y
sudo apt-get install nano -y
pip3 install console-menu
pip3 install boto3
pip3 install pexpect
cwd=$(pwd)
cf="${cwd}/../credentials.json"
python3 ../mini_installer/menu/menu_main.py --cf ${cf}
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
