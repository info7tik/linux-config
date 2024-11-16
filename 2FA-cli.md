# Utiliser le 2FA en ligne de commande
* Installer QR scanner dans le navigateur
  * https://chromewebstore.google.com/detail/qr-scanner/gmloihcgbhbonllenincdakeijmikcne?hl=fr

* Installer oathtool
```
sudo apt install oathtool gnupg2
```

* Scanner le QR code de la page 2FA de github
* Copier la valeur de la propriété secret
* Générer le code de 6 chiffres en ligne de commande
```
oathtool -b --totp 'AAAAAAAA3AAAAAAA'
```
* Entrer le code dans la page 2FA de github 
