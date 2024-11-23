clc;
clear all;
close all;
%Generated Signal
f=10;
T=1/f;
td=T/100;
t=0:td:4*T;
x=sin(2*pi*10
plot(t,x);
%sampled signal
fs=100;
Ts=1/fs;
t1=0:Ts:3*T;