# **Lab 4**
## *Install Necessary Libraries*
 ```ssh
$ pip3 -V
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Pip3-V.png)

 ```ssh
$ pip3 list
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Pip3List.png)

 ```ssh
$ sudo pip3 install -U setuptools
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallSetuptools.png)

 ```ssh
$ sudo pip3 install -U django
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallDjango.png)

 ```ssh
$ sudo pip3 install -U djangorestframework
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallDjangorestframework.png)

 ```ssh
$ sudo pip3 install -U djangorestframework
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallDjangorestframework.png)

 ```ssh
 $ sudo pip3 install -U django-filter 
 ``` 
 ![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallDjangofilter.png)
 
  ```ssh
$ sudo pip3 install -U markdown
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallMarkdown.png)

  ```ssh
$ sudo pip3 install -U requests
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallRequests.png)

## *Install MariaDB Server and Client on Raspberry Pi*

  ```ssh
$ sudo apt update
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Update.png)

  ```ssh
$ sudo apt install mariadb-server mariadb-client
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/MariaDB/MariaDB1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/MariaDB/MariaDB2.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/MariaDB/MariaDB3.png)

  ```ssh
$ sudo apt install python3-mysqldb
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallMySQLdb.png)

  ```ssh
$ sudo pip3 install -U mysqlclient
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallMySQLclient.png)

  ```ssh
$ sudo mysql_secure_installation
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/InstallMySQLsecure.png)

## *Start Django Project "Stevens"*

  ```ssh
pi@raspberrypi:~ $ django-admin startproject stevens
pi@raspberrypi:~ $ cd stevens
pi@raspberrypi:~/stevens $ ls
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/StartDjangoProject.png)

  ```ssh
pi@raspberrypi:~/stevens $ python3 manage.py startapp myapp
pi@raspberrypi:~/stevens $ ls
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/StartDjangoApp.png)

  ```ssh
pi@raspberrypi:~ $ sudo mysql -u root -p
Enter password: PASSWORD
MariaDB [(none)]> use mysql
MariaDB [mysql]> select user, host from mysql.user;
MariaDB [mysql]> create user pi@localhost identified by 'PASSWORD';
MariaDB [mysql]> show databases;
MariaDB [mysql]> create database stevens;
MariaDB [mysql]> grant all privileges on stevens.* to pi@localhost;
MariaDB [mysql]> quit
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/MySQLdatabase.png)

  ```ssh
pi@raspberrypi:~/stevens $ cd stevens
pi@raspberrypi:~/stevens/stevens $ ls
asgi.py  __init__.py  __pycache__  settings.py  urls.py  wsgi.py
pi@raspberrypi:~/stevens/stevens $ nano settings.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/Settings.png)

  ```ssh
pi@raspberrypi:~/stevens/stevens $ cp ~/iot/lesson4/stevens/urls.py .
pi@raspberrypi:~/stevens/stevens $ cd ..
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/CopyUrls.png)

  ```ssh
pi@raspberrypi:~/stevens $ cd myapp
pi@raspberrypi:~/stevens/myapp $ ls
admin.py  apps.py  __init__.py  migrations  models.py  tests.py  views.py
pi@raspberrypi:~/stevens/myapp $ cp ~/iot/lesson4/stevens/admin.py .
pi@raspberrypi:~/stevens/myapp $ cp ~/iot/lesson4/stevens/models.py .
pi@raspberrypi:~/stevens/myapp $ cp ~/iot/lesson4/stevens/views.py .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/CopyAdmin.png)

  ```ssh
pi@raspberrypi:~/stevens/myapp $ mkdir static templates
pi@raspberrypi:~/stevens/myapp $ cd templates
pi@raspberrypi:~/stevens/myapp/templates $ mkdir myapp
pi@raspberrypi:~/stevens/myapp/templates $ cd myapp
pi@raspberrypi:~/stevens/myapp/templates/myapp $ cp ~/iot/lesson4/stevens/index.html .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/CopyIndex.png)

  ```ssh
pi@raspberrypi:~/stevens/myapp/templates/myapp $ nano index.html
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/GoogleMapsAPIkey.png)

  ```ssh
pi@raspberrypi:~/stevens/myapp/templates/myapp $ cd ~/stevens/myapp/static
pi@raspberrypi:~/stevens/myapp/static $ cp ~/iot/lesson4/static/favicon.ico .
pi@raspberrypi:~/stevens/myapp/static $ mkdir myapp
pi@raspberrypi:~/stevens/myapp/static $ cd myapp
pi@raspberrypi:~/stevens/myapp/static/myapp $ cp ~/iot/lesson4/static/*css .
pi@raspberrypi:~/stevens/myapp/static/myapp $ cp ~/iot/lesson4/static/*js .
pi@raspberrypi:~/stevens/myapp/static/myapp $ cd ~/stevens
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/CopyStaticFiles.png)

  ```ssh
pi@raspberrypi:~/stevens $ python3 manage.py makemigrations myapp
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/MakeMigrations.png)

  ```ssh
pi@raspberrypi:~/stevens $ python3 manage.py migrate
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/Migrate.png)

  ```ssh
pi@raspberrypi:~/stevens $ python3 manage.py createsuperuser
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/CreateSuperuser.png)

  ```ssh
pi@raspberrypi:~/stevens $ python3 manage.py runserver
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/RunServer/RunServer1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/RunServer/RunServer2.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/RunServer/RunServer3.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/RunServer/RunServer4.png)

  ```ssh
View app at http://127.0.0.1:8000

or

pi@raspberrypi:~/stevens $ python3 manage.py runserver 0.0.0.0:8000
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/ServerTerminal.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Django/ViewApp.png)

## *Start Django REST Project "mycpu"*

  ```ssh
~ $ django-admin startproject mycpu
~ $ cd mycpu
~/mycpu $ ls
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/StartProject.png)

  ```ssh
~/mycpu $ python manage.py startapp myapp
~/mycpu $ ls
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/StartApp.png)

  ```ssh
~/mycpu $ cd mycpu
~/mycpu/mycpu $ ls
asgi.py  __init__.py  __pycache__  settings.py  urls.py  wsgi.py
~/mycpu/mycpu $ nano settings.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/Settings.png)

  ```ssh
~/mycpu/mycpu $ cp ~/iot/lesson4/mycpu/urls.py .
~/mycpu/mycpu $ cd ..
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/CopyUrls.png)

  ```ssh
~/mycpu $ cd myapp
~/mycpu/myapp $ ls
admin.py  apps.py  __init__.py  migrations  models.py  tests.py  views.py
~/mycpu/myapp $ cp ~/iot/lesson4/mycpu/admin.py .
~/mycpu/myapp $ cp ~/iot/lesson4/mycpu/models.py .
~/mycpu/myapp $ cp ~/iot/lesson4/mycpu/views.py .
~/mycpu/myapp $ cp ~/iot/lesson4/mycpu/serializers.py .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/CopyAdmin.png)

  ```ssh
~/mycpu/myapp $ nano views.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/ChangePassword.png)

  ```ssh
~/mycpu/myapp $ mkdir static templates
~/mycpu/myapp $ cd templates
~/mycpu/myapp/templates $ mkdir myapp
~/mycpu/myapp/templates $ cd myapp
~/mycpu/myapp/templates/myapp $ cp ~/iot/lesson4/mycpu/index.html .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/CopyIndex.png)

  ```ssh
~/mycpu/myapp/templates/myapp $ nano index.html
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/EditIndex.png)

  ```ssh
~/mycpu/myapp/templates/myapp $ cd ~/mycpu/myapp/static
~/mycpu/myapp/static $ cp ~/iot/lesson4/static/favicon.ico .
~/mycpu/myapp/static $ mkdir myapp
~/mycpu/myapp/static $ cd myapp
~/mycpu/myapp/static/myapp $ cp ~/iot/lesson4/static/*css .
~/mycpu/myapp/static/myapp $ cp ~/iot/lesson4/static/*js .
~/mycpu/myapp/static/myapp $ cd ~/mycpu
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/CopyStatic.png)

  ```ssh
~/mycpu $ ls
db.sqlite3  manage.py  myapp/  mycpu/
~/mycpu $ cp ~/iot/lesson4/mycpu/controller.py .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/Controller/ChangeController.png)

  ```ssh
~/mycpu $ nano controller.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/Controller/ChangePassword.png)

  ```ssh
~/mycpu $ sudo pip3 install -U psutil
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/InstallPsutil.png)

  ```ssh
~/mycpu $ python3 manage.py makemigrations myapp
~/mycpu $ python3 manage.py migrate
~/mycpu $ python3 manage.py createsuperuser
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/Migration.png)

  ```ssh
~/mycpu $ python3 manage.py runserver
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/RunServer/RunServer1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/RunServer/RunServer2.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/RunServer/RunServer3.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/RunServer/RunServer4.png)

  ```ssh
Post 2022 to the Dt List at http://127.0.0.1:8000/dt
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/DTlist.png)

  ```ssh
Post 20 to the Cpu List at http://127.0.0.1:8000/cpu
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/CPUlist.png)

  ```ssh
Post 20 to the Mem List at http://127.0.0.1:8000/mem 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/MemList.png)

  ```ssh
~/mycpu $ python3 controller.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/RunController.png)

  ```ssh
~/mycpu $ python manage.py runserver 0.0.0.0:8000
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/DjangoRest/ViewApp.png)

## *Flask*

  ```ssh
$ cd ~/iot/lesson4
$ python3 hello_world.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/RunFlask/RunFlask1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/RunFlask/RunFlask2.png)

  ```ssh
$ sudo pip3 install -U flask-ask
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/InstallFlaskAsk.png)

  ```ssh
$ sudo pip3 install 'cryptography<2.2' 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/InstallCryptography.png) 

  ```ssh
$ sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
$ sudo unzip ngrok-stable-linux-arm.zip
$ ./ngrok http 5000
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/ngrok.png)

  ```ssh
$ cd ~/iot/lesson4
$ python3 memory_game.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/MemoryGame.png) 

  ```ssh
Alexa
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa1.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa2.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa3.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa4.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa5.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa6.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa7.png) 
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab4/Images/Flask/Alexa/Alexa8.png) 
