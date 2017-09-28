# Ubuntu 16.04 virtual env steps to run the shell script

## Getting Started 

To install all the Frameworks (torch, caffe, tensorflow, theano, pytorch), launch your VM  and run the following coomands in order in to youe VM terminal.

```
sudo apt-get install git -y
```
```
git clone https://github.com/amir-jafari/Cloud-Computing.git
```
```
cd Cloud-Computing/Deep-Learning-Kit-Installation/Shell-Script-Installation/Ubuntu-16.04-Vritual-Python/
```
```
mv install-16-04-final.sh ~
```
```
cd ~
```
```
chmod +x install-16-04-final.sh
```
```
sudo ./install-16-04-final.sh <netid or username of ssh key>
```

## Testing the framworks

* Torch

Run the following commands

```
source /etc/environment
```
```
source ~/.bashrc
```
then to test torch just enter

```
th
```
in to your terminal and you should be able to see the torch environment. Now enter 
```
require 'dp'
```
if torch is is installed correctly then you should be see a long list. Then type
```
exit
```
and then enter yes to get out of the torch env.

* Caffe

Enter the following command on your terminal
```
sudo rm -rf /dev/raw1394
```
```
python
```
then in the python env write
```
import caffe
```
exit out from python env by exit()

* Tensorflow, Keras, Theano (python 2.7)

Enter the following command on your terminal
```
source ~/python2/bin/activate
```
```
python
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
if you did not get any error then exit out from python env by exit().


* Pytorch (python 2.7)

Enter the following command on your terminal
```
python
```
then in the python env write
```
import torch
```

if you did not get any error then exit out from python env by exit().

* Tensorflow, Keras, Theano (python 3.5)

Enter the following command on your terminal
```
source ~/python3/bin/activate
```
```
sudo pip3 install pandas --upgrade
```
```
sudo pip3 install --upgrade numexpr
```
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
if you did not get any error then exit out from python env by exit().


* Pytorch (python 3.5)

Enter the following command on your terminal
```
python3
```
then in the python env write
```
import torch
```

if you did not get any error then exit out from python env by exit().


