# SSH Key

## Guide

* Mac Users

1- Install [Xquartz](https://www.xquartz.org/), then reboot your computer.

2- Open your terminal while the Xquartz is running.

3- Type the following command in your terminal.

```
ssh-keygen -t rsa -f ~/.ssh/gkey -C ubuntu
```

4- Hit enter and change your directory.

```
cd ~/.ssh
```

5- Check the list of the files under your directory.

```
ls
```

6- You should be able to see at least 2 files gkey and gkey.pub

7- Enter the following command to see your public key code.

```
cat gkey.pub
```

8- Copy the public code for configuring your GCP dashboard.

9- Now you need to configure the GCP dashboard and the instructions are in the videos that I provided.

10- Finally, in your terminal while you are in the same directory (/.ssh) enter the follwoing command to connect to your VM that you configured.

```
ssh -X -i gkey ubuntu@<External IP address from your Dashbaord VMs>
```

## Possible Errors

Dear Wang,

1. If you get Warning "REMOTE HOST IDENTIFICATIN HAS CHANGED" do the following:
```
nano know_hosts 
```

and the window will open up remove the line which has your ip address that is confilicting (you can delete line by Ctrl+k)

2. Then do Ctrl +x type y and hit enter.

3. Redo the ssh and it should work.


* Windows:

1- Install [puttygen](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

2- Install [Mobaxterm](https://mobaxterm.mobatek.net/download-home-edition.html), the installer version