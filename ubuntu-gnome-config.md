* alt-tab with only apps on workspace
```
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```
* fix bluetooth headset does not work with VLC
```
sudo apt install wireplumber libspa-0.2-bluetooth
systemctl --user --now disable pipewire-media-session
systemctl --user --now enable wireplumber
```

