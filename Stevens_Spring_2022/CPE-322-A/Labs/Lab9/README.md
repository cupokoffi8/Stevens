# Lab 9
## *Yang*
 ```ssh
$ sudo apt install libxml2-dev libxslt1-dev
$ sudo pip3 install -U lxml pyang
$ cp ~/iot/lesson9/intrusiondetection.yang ~/demo
$ cd ~/demo
$ cat intrusiondetection.yang
$ pyang -f yin -o intrusiondetection.yin intrusiondetection.yang
$ cat intrusiondetection.yin
$ pyang -f uml -o intrusiondetection.uml intrusiondetection.yang --uml-no=stereotypes,annotation,typedef
$ cat intrusiondetection.uml
$ sudo pip3 install -U plantuml 
$ python3 -m plantuml intrusiondetection.uml 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/2.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/3.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/4.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/5.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/6.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/7.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/8.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/9.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/10.png)

 ```ssh
$ cd
$ sudo apt update
$ sudo apt install gimp pinta
$ cd ~/demo
$ pinta intrusiondetection.png
$ gimp -h
$ gimp -a intrusiondetection.png 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/11.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/12.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/13.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/14.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/15.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/16.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/17.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/18.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/19.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab9/Images/Install/10.png)
