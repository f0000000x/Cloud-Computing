# ---- Ubuntu 14.04 virtual env steps to run the shell script ----


sudo apt-get install git -y


git clone https://github.com/amir-jafari/Cloud-Computing.git


cd Cloud-Computing/Deep-Learning-Kit-Installation/Shell-Script-Installation/Ubuntu-14.04/


mv install-14-04-final1.sh ~


cd ~


chmod +x install-14-04-final1.sh


sudo ./install-14-04-final1.sh <netid or username of ssh key>