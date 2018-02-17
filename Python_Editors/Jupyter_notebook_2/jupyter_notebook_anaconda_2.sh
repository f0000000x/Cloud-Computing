#!/bin/sh
#--------------------------------------------------------------------#
#      Script to set up Jupter Notebook on Amazon Web Services       #
#--------------------------------------------------------------------#
#	Author: Amir Jafari, Prince Birring, Michael Arango                #
#       Date:  02/12/2018                                            #
#	Organization: George Washington University                         #
#--------------------------------------------------------------------#
# Update and Upgrade the Instance
sudo apt-get update && sudo apt-get upgrade -y
# Download Anaconda
wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh
# Change the permission to excute the file.
chmod +x Anaconda-2.3.0-Linux-x86_64.sh 
# Run the shell sript
bash Anaconda-2.3.0-Linux-x86_64.sh
# Run Source .bashrc
export PATH=/home/ubuntu/anaconda/bin:$PATH
chmod a+x ~/.bashrc
source ~/.bashrc 
# Create a nbserver
ipython profile create nbserver 
# Create self Signed SSL Certificate
mkdir certs
cd certs
sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
cd ~
# Change the configuration 
mv ~/ipython_notebook_config.py ~/.ipython/profile_nbserver
# Create a new directory - home to save ipython file
mkdir ipython_notebook
