# EV3

## Steps to test autostart script

1. Go to branch `feature/autodownloadstart`
2. Head to the `autodownload` folder
3. Build the script. Make sure you have 
a cmake version of at least `> 3.11`
4. Open EV3 robot. Make sure it has wifi.
5. Add the built script to the robot under the name `robotics`
6. Insert the command `sudo chmod +x robotics`
6. create a file as `/etc/systemd/robotics.service` and add
the following: 
```
[Unit]
Description=Robotics
After=multi-user.target

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
ExecStart= INSERT THE LOCATION TO THE AUTODOWNLOAD SCRIPT 
AND START IT
```
8. Restart the robot and see if it works.