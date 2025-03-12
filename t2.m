clc
clear all;
close all;

x = [-2 1 5 0 6 2 -4];
y = [0 1 4 -2 3 -4];

[r,lags] = xcorr(x,y);
subplot 411
plot (x);
subplot 412
plot (y);
subplot 413
plot (lags,r);
[r,lags] = xcorr(x)
subplot 414
plot (lags,r);