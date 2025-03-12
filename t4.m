clc;
clear all;
close all;
n = 0:200;
x = 5*sin(2*pi*1/20*n);
subplot 411
plot(n,x);
noise = rand(1,length(n));
subplot 412
plot(n,noise);
z = x+noise;
subplot 413
plot(n,z);
[r,lags] = xcorr(x,z)
subplot 414
plot(lags,r);

