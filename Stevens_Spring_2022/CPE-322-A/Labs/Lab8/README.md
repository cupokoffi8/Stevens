# Lab 8
## *Plot Data From Lab 7*
 ```ssh
Install and update libraries
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/1.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/2.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/3.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/4.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/5.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/6.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/7.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/8.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/9.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Install/10.png)

 ```ssh
$ python3 pyplot_simple.py 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/line.png)

 ```ssh
$ cd demo 
$ cp ~/iot/lesson8/plt_final.py . 
$ cp ~/iot/lesson8/plt_cv2.py . 
$ nano plt_final.py 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/nano-final.png)

 ```ssh
$ cd demo 
$ cp ~/iot/lesson8/plt_final.py . 
$ cp ~/iot/lesson8/plt_cv2.py . 
$ nano plt_final.py 
$ nano plt_cv2.py 
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/nano-final.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/plt-final.png)
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/plt-cv2.png)

 ```ssh
Graph Collected Data
```
![This is an image](https://github.com/cupokoffi8/CPE-322/blob/main/Labs/Lab8/Images/Plot/plt-final-graph.png)

 
My intention behind the data collection was to analyze how a sudden change in temperature impacts the temperature and CPU usage of my Raspberry PI. I began data collection in my bedroom on the night of March 22, 2022, and stopped it after 11 hours. At the beginning of the data collection process, my bedroom was at a temperature of 23ºC. I opened my bedroom window, in front of which my Raspberry PI sat on my desk. it was about -2ºC outside, so I expected to see a noticeable decrease in the temperature of the CPU on my Raspberry PI. However, after graphing the data, it shows a more minimal decrease in temperature, showing that it was in an idle state in terms of CPU usage. The graph does show the temperature decreasing overnight, and slowly increasing as the day commences and outside temperatures increase. Thus, I have at least examined a slight change in temperature that corresponds with the changing temperature of the Raspberry PI's environment. 

