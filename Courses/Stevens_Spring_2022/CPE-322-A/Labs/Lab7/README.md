# **Lab 7**
## *ThingSpeak*
 ```ssh
$ sudo pip3 install -U psutil
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/ThingSpeak/install-psutil.png)

 ```ssh
$ cd ~/demo
$ cp ~/iot/lesson7/thingspeak_cpu_loop.py .
$ cp ~/iot/lesson7/thingspeak_feed.py .
$ cat thingspeak_cpu_loop.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/ThingSpeak/cat-cpu.png)

 ```ssh
$ cat thingspeak_feed.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/ThingSpeak/cat-feed.png)

```ssh
$ python3 thingspeak_feed.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/ThingSpeak/python-feed.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/ThingSpeak/thingspeak.png)

## *Google Sheets*

 ```ssh
$ sudo pip3 install -U gspread oauth2client
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/GoogleSheets/install-gspread.png)

 ```ssh
 $ cd demo
 $ cp ~/iot/lesson3/system_info.py .
 $ cp ~/iot/lesson7/rpi_spreadsheet.py .
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/GoogleSheets/demo.png)

  ```ssh
$ nano rpi_spreadsheet.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/GoogleSheets/nano.png)

```ssh
$ python3 rpi_spreadsheet.py
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab7/Images/GoogleSheets/rpidata.png)  
