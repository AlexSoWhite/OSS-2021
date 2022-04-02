[nafanya@10 ~]$ nano server.php
[nafanya@10 ~]$ php server.php
[nafanya@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[nafanya@10 ~]$ sudo nano /etc/systemd/system/nafanya.service
[nafanya@10 ~]$ sudo chmod 664 /etc/systemd/system/nafanya.service
[nafanya@10 ~]$ systemctl daemon-reload
[nafanya@10 ~]$ systemctl status nafanya
[nafanya@10 ~]$ systemctl start nafanya
[nafanya@10 ~]$ systemctl status nafanya
[nafanya@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[nafanya@10 ~]$ ls -lZ /etc/systemd/system/nafanya.service
-rw-r--r--. 1 root root unconfined_u:object_r:systemd_unit_file_t:s0 240 Mar 11 23:03 /etc/systemd/system/nafanya.service
[nafanya@10 ~]$ systemctl stop nafanya
[nafanya@10 ~]$ systemctl status nafanya
[nafanya@10 ~]$ journalctl -f -u nafanya
-- Logs begin at Fri 2022-03-11 23:15:05 MSK. --
Mar 11 23:16:44 10.0.2.15 systemd[1]: Started Custom PHP Server.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopping Custom PHP Server...
Mar 11 23:21:47 10.0.2.15 systemd[1]: nafanya.service: Succeeded.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopped Custom PHP Server.
[nafanya@10 ~]$ systemctl enable nafanya
