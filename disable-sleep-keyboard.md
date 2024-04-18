* Sleep keyboard shortcut
```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
# This command restart the computer
sudo systemctl restart systemd-logind.service
```
* Calculator and Mail keyboard shortcuts
```
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator-static "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys email-static "['']"
Alt+F2 > r
```
