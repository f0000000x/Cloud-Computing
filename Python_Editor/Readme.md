# Pycharm Remote Editor

## Configuring Cloud Side:
1. SSH to your instance (AWS or GCP).
2. sudo git clone <the repo of deep learning>
3. Change the repo permissions by 
```
sudo chmod -R 777 <name of the directory>
```
4. Set the display (enter the following command into command line):
```
export DISPLAY=localhost:10.0
```

## Pycharm Side:
1. Create a directory in your computer that you can work on it.
2. Create a new project and point the project to the directory that you created.
3. Go to tools and deployments and complete the fields.
4. On the second tab of deployment fill the mapping fields.
5. Go to file and setting and add the remote interpreter 2.7 and 3.5 (by clicking on the gear box icon).
6. Download the files from deployments to the local computer by right clicking on the folder and downloading it from cloud.
8. Run one of the scripts and edit environment and set the display:
```
DISPLAY=localhost:10.0
```
9. For caffe you need add extra environment field: 
```
PYTHONPATH=/home/ajafari/caffe/python
```
10. Be sure in the environment the working directory is the one you are pointing at.

## Extra Advance Options
```
import matplotlib
```
```
matplotlib.use('Qt4Agg')
```
```
import matplotlib
```
```
 matplotlib.use('TkAgg')
 ```

