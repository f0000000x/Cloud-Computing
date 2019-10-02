# Ubuntu 18.04 Deep Learning Software shell script

## Getting Started 

Version 3: To install all the Frameworks (tensorflow, theano, pytorch, Keras), launch your VM  and run the following commands in order in to your VM terminal (CUDA 10.1).



```
sudo apt-get install git -y
```
```
git clone https://github.com/amir-jafari/Cloud-Computing.git
```
```
cd Cloud-Computing/Deep-Learning-Kit-Installation/Shell-Script-Installation/Ubuntu-18.04/
```
We are going to install Version 3:

```
mv install-18-04-final-V3.sh ~
```
```
cd ~
```
```
chmod +x install-18-04-final-V3.sh
```
```
sudo ./install-18-04-final-V3.sh
```

## Testing the framworks

* Set Environment

Run the following commands

```
source /etc/environment
```
```
source ~/.bashrc
```

* Tensorflow, Keras, Theano (Virtual Python 2.7)

Enter the following command on your terminal

```
python3
```
then in the python env write
```
import tensorflow
```
```
import keras
```
```
import theano
```
if you did not get any error then exit out from python by exit().



* Pytorch 

Enter the following command on your terminal
```
python
```
then in the python env write
```
import torch
```
```
import torchvision
```

if you did not get any error then exit out from python env by exit(). 


* Pycharm 

Note: Mac users need to acivate [Xquartz](https://www.xquartz.org/) in their machine and then open your terminal. In other words, when you are ssh ing to VM use -X as follows:

```
ssh -X -i <private key file > <netid>@<External Ip address>
``` 

Note: Windows users use Mobaexterma and you are fine.

To activate pycharm enter the following commands 

```
./pycharm.sh
```
* Testing by python file:

Run the following commands

```
source /etc/environment
```
```
source ~/.bashrc
```

Change directory by
```
cd /home/ubuntu/Cloud-Computing/Deep-Learning-Kit-Installation/Shell-Script-Installation/Ubuntu-18.04
```
Run the test.py and check the frameworks.

```
python3 test.py
```

