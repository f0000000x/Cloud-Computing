# ---- Ubuntu 16.04 virtual env steps to run the shell script ----


sudo apt-get install git -y


git clone https://github.com/amir-jafari/Cloud-Computing.git


cd Cloud-Computing/Deep-Learning-Kit-Installation/Shell-Script-Installation/Ubuntu-16.04-Vritual-Python/


mv install-16-04-final.sh ~


cd ~


chmod +x install-16-04-final.sh


sudo ./install-16-04-final.sh <netid or username of ssh key>