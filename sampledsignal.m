%Prithviraj_2254901101
clc;clear all;close all;
%Generated Signal
f=10;
T=1/f;
td=T/100; 
t=0:td:4*T; %4cycles
x=sin(2*pi*10*t)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Normal Sine wave');
grid on;


%Sampled Signal
fs=100;
Ts=1/fs;
t1=0:Ts:3*T;
xs=sin(2*pi*10*t1)

subplot 111;
stem(t1,xs);
xlabel('Time');
ylabel('Amplitude');
title('Sampled Signal');
grid on;

