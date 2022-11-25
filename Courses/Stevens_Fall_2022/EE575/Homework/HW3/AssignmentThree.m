num = [5, 6, 1]; 

d1 = [5 6 20]; 
d2 = [5 118/19 20]; 
d3 = [5 118/19 20 0.5]; 

s = tf("s"); 

sys1 = tf(num,d1); 
sys2 = tf(num,d2); 
sys3 = tf(num,d3); 

step(sys1, sys2, sys3);
step(sys1/s, sys2/s, sys3/s); 