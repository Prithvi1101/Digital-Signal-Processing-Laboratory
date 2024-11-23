%Prithviraj_2254901101
clc;clear all;close all;
n=-5:1:15;
subplot 311
k=0;
x=(n-k)>=0;
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('u(n)'); %NO shifting and unit step signal
subplot 312
k=+2;
x=(n-k)>=0;
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('u(n-2)'); 
subplot 313
k=-2;
x=(n-k)>=0;
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('u(n+2)'); 
grid on;
