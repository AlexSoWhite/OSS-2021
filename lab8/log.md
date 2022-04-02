[nafanya@nafanya-arch ~]$ sudo nano /etc/pam.d/su
[nafanya@nafanya-arch ~]$ sudo useradd -G wheel user1
[nafanya@nafanya-arch ~]$ sudo passwd user1
Changing password for user user1.
New password:
Retype new password:
passwd: all authentication tokens updated successfully
[nafanya@nafanya-arch ~]$ su - user1
Password:
[user1@nafanya-arch ~]$ su
Password:
sh: Permission denied
[user1@nafanya-arch ~]$ exit
logout
[nafanya@nafanya-arch ~]$ sudo nano /etc/pam.d/su
[nafanya@nafanya-arch ~]$ su - user1
Password:
[user1@nafanya-arch user1]$ su
Password:
[root@nafanya-arch user1]$ whoami
root
[root@nafanya-arch user1]$ exit
exit
[user1@nafanya-arch ~]$ exit
logout
[nafanya@nafanya-arch ~]$ man pam_pwquality
[nafanya@nafanya-arch ~]$ sudo nano /etc/security/pwquality.conf
[nafanya@nafanya-arch ~]$ sudo nano /etc/pam.d/system-auth
[nafanya@nafanya-arch ~]$ sudo passwd user1
Changing password for user user1.
New password:
BAD PASSWORD: The password is shorter than 12 characters
[nafanya@nafanya-arch ~]$ wget https://raw.githubusercontent.com/linux-pam/linux-pam/master/examples/check_user.c
[nafanya@nafanya-arch ~]$ nano check_user.c
[nafanya@nafanya-arch ~]$ sudo yum install pam-devel
[nafanya@nafanya-arch ~]$ gcc check_user.c -o check_user -lpam -lpam_misc
[nafanya@nafanya-arch ~]$ sudo nano /etc/pam.d/check
[nafanya@nafanya-arch ~]$ ./check_user nafanya
Password:
Authenticated
error code: Success
[nafanya@nafanya-arch ~]$ su -
Password:
[root@nafanya-arch ~]$ passwd -e nafanya
Expiring password for user nafanya.
passwd: Success
[root@nafanya-arch ~]$ exit
logout
[nafanya@nafanya-arch ~]$ ./check_user nafanya
Password:
Not Authenticated
error code: Authentication token is no longer valid; new one required
