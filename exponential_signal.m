%Prithviraj_2254901101
clc;clear all;close all;
n=-10:10;
a=input('Enter a= ');
x=a.^-n; %element by element
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Exponential Signal');
grid on;
