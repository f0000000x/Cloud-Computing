#!/bin/bash

# --------------------------------------------------------------#
# Script to set up a Deep Learning VM on Google Cloud Platform	#
#---------------------------------------------------------------#
#Autor: Amir Jafari		                                    	#
#Date: 05/26/2019						                        #
#                                                               #
# INSTRUCTIONS: When you run this script, make sure you         #
# include the username associated with your instance as         #
# the first parameter. Otherwise, the softwares will not        #
# work properly.   							                    #
# ------------------------------------------------------------- #
# ----------------- Browser ------------------
sudo apt update
sudo apt upgrade -y
# ----------------- Chromium-------------------
sudo apt install chromium-browser -y
# ----------------- Cuda 10.0 -----------------
wget https://storage.googleapis.com/cuda-deb/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda -y
sed 1d /etc/environment > /etc/environment
echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/cuda-10.0/bin"' >> /etc/environment
source /etc/environment
nvcc --version
nvidia-smi

# ----------------- Cudnn 7.6 -----------------
wget https://storage.googleapis.com/cuda-deb/libcudnn7-dev_7.5.0.56-1%2Bcuda10.0_amd64.deb
wget https://storage.googleapis.com/cuda-deb/libcudnn7-doc_7.5.0.56-1%2Bcuda10.0_amd64.deb
wget https://storage.googleapis.com/cuda-deb/libcudnn7_7.5.0.56-1%2Bcuda10.0_amd64.deb

sudo dpkg -i libcudnn7_7.5.0.56-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.5.0.56-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-doc_7.5.0.56-1+cuda10.0_amd64.deb


sudo cp -r /usr/src/cudnn_samples_v7/ $HOME
cd $HOME/cudnn_samples_v7/mnistCUDNN
sudo make
./mnistCUDNN
cd ~
# ----------------- Python 3.6 ------------------------------------
sudo apt install -y python3-pip
sudo apt install build-essential libssl-dev libffi-dev python3-dev -y
sudo apt-get install tcl-dev tk-dev python-tk python3-tk -y
sudo pip3 install --upgrade pip
sudo -H pip3 install matplotlib
sudo -H pip3 install pandas
sudo -H pip3 install h5py
sudo -H pip3 install leveldb
sudo -H pip3 install seaborn
sudo -H pip3 install --upgrade tensorflow-gpu
sudo -H pip3 install Theano 
sudo -H pip3 install keras
sudo -H pip3 install sklearn
sudo -H pip3 install cython
sudo -H pip3 install torch 
sudo -H pip3 install torchvision
sudo -H pip3 install opencv-python
sudo -H pip3 install lmdb
sudo -H pip3 install sympy
sudo -H pip3 install pydotplus
sudo apt-get install -y p7zip-full
sudo apt install unzip
sudo -H pip3 install gpustat

# ----------------- Pycharm 2019 -----------------
wget https://storage.googleapis.com/cuda-deb/pycharm-community-2019.1.2.tar.gz
sudo tar -zxf pycharm-community-2019.1.2.tar.gz
sudo ln -s /home/ubuntu/pycharm-community-2019.1.2/bin/pycharm.sh pycharm


sudo apt-get install -y stress htop iotop lm-sensors
sudo apt-get install -y python3-skimage
