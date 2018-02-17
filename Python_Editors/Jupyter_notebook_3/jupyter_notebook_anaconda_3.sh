#!/bin/sh
#--------------------------------------------------------------------#
#      Script to set up Jupter Notebook on Amazon Web Services       #
#--------------------------------------------------------------------#
#       Author: Amir Jafari, Michael Arango, Prince Birring          #
#       Date:  02/12/2018                                            #
#       Organization: George Washington University                   #
#--------------------------------------------------------------------#
# Update and Upgrade the Instance
sudo apt-get update && sudo apt-get upgrade -y
# Download Anaconda
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
# Change the permission to excute the file.
sudo chmod +x Anaconda3-5.0.1-Linux-x86_64.sh
# Run the shell sript
bash Anaconda-3.5.0.1-Linux-x86_64.sh
# Run Source .bashrc
export PATH=/home/ubuntu/anaconda/bin:$PATH
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
