%Prithviraj_2254901101
clc;clear all;close all;
%Generated Signal
f=10;
T=1/f;
td=T/100;
t=0:td:4*T; %4cycles
x=sin(2*pi*10*t)
plot(t,x);
subplot 111;
xlabel('Time');
ylabel('Amplitude');
title('Normal Sine wave');
grid on;
