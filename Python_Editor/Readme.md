# Pycharm Editors

* Pycharm

# --------------------------------------------------------------------------

Pycharm Side:
Cloud Side:
1- SSH to the instance.
2- sudo git clone the rep0
3- Change the repo permissions - sudo chmod -R 777 directory
4- export DISPLAY=localhost:10.0

1- Create a directory in your computer that you can work on it.
2- Open a Project and point the project to the directory that you ocreated.
3- Go to tools and deployments and fill the fileds.
4- On the second tab of deployment fill the mapping fields.
5- Go to setiing and add the remote interpreter 2.7 and 3.5.
6- Download the files from depoyments to the local computer by clicking downloads
8- Run one of the scripts and edit enviornment and set the DISPLAY=localhost:10.0
9- For caffe yu need extra enviornment PYTHONPATH=/home/ajafari/caffe/python
10- Be sure in the eniornemnt the working directory is the one you are pointing at.

#-------------Extra Advance Options Options ---------------------------------
import matplotlib
matplotlib.use('Qt4Agg')

# import matplotlib
# matplotlib.use('Qt4Agg')

# Un-Comment the following line if you are running remote pycharm.
# Comment the following line if you are running normal pycharm.
# import matplotlib
# matplotlib.use('TkAgg')

