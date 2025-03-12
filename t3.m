clc
clear all;
close all;
x = [0 0 0 0 2 -1 3 7 1 2 -3 0 0 0];
y = [0 0 0 0 1 -1 2 -2 5 1 4 1 -2 5 0 0 0];
[r,lags] = xcorr(x,y);
subplot 211
stem(lags,r);
Y = fliplr(y);
z= conv(x,Y);
subplot 212
stem(z)