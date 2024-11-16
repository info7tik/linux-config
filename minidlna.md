# minidlna guide on Ubuntu server
* sources
  * https://wiki.archlinux.org/title/ReadyMedia#Running_minidlna_as_your_own_user
  * https://developerinsider.co/auto-mount-drive-in-ubuntu-server-22-04-at-startup/

## Install the service
```
sudo apt install minidlna ubuntu-restricted-extras
```

## Configure the default text editor
```
sudo update-alternatives --config editor
```

## Change the user that runs the service
* `sudo mkdir /etc/systemd/system/minidlna.service.d/`
* `sudo vim /etc/systemd/system/minidlna.service.d/run-as-user.conf`
```
[Service]
User=ubuntu
Group=ubuntu
```
* `sudo systemctl daemon-reload`
* `sudo vim /etc/minidlna.conf`
```
user=ubuntu
media_dir=/home/ubuntu/videos
db_dir=/home/ubuntu/.config/minidlna
log_dir=/home/ubuntu/.config/minidlna/log
```

## Add external storage
* create the mount point
```
mkdir /home/ubuntu/ext-usb
```
* plug the usb and find the UUID
```
lsblk -o NAME,FSTYPE,UUID,MOUNTPOINTS
```
* find the user uid and gid
```
id
> uid=1000(ubuntu) gid=1000(ubuntu) groups=1000(ubuntu),4(adm),24(cdrom),27(sudo),30(dip),101(lxd)
```
* edit `/etc/fstab`
```
UUID=632D-7154 /home/ubuntu/ext-usb   exfat    auto,users,uid=1000,gid=1000,nofail 0 0
```
* mount to test if it is working
```
sudo systemctl daemon-reload
touch /home/ubuntu/ext-usb/toto.txt
ls /home/ubuntu/ext-usb/
> toto.txt
```
