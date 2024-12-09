All of these were written to be executed by systemd-units.
</br>
</br>
</br>

`*.service` & `*timer` files have to be put into the systemd directories

e.g.: `/etc/systemd/system`
</br></br></br>
To start the script enable corresponding timer via systemctl

e.g.: `systemctl enable --now backup.timer` 
