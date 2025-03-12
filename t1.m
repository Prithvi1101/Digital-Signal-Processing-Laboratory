clc
clear all; close all;
t = 1:.01:5;
x1 = sin(2*pi*t);
x2 = sin(9*pi*t);
z = [x1,x2,x1,x2]
subplot 511
plot(x1);
subplot 512
plot(x2);
subplot 513
plot(z);
[r,lags]= xcorr(z,x1);
subplot 514
plot(lags,r);
%/ r is co efficient
% lag refers to kothay correlation hocche
[R,lags]= xcorr(x1);
subplot 515
plot(lags,R);