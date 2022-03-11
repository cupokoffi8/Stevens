clear; clc;
I = [2 1 1;
      2 2 1;
       4 2 2];
       
k = [0 1 2;
        0 0 1;
        0 0 0];
Hsl = convolve(I, k)