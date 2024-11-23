%Prithviraj_2254901101
clc;
clear all;
close all;

n=-10:10;
no=0; %change value to shift%
u=(n-no>=0);
subplot(2,2,1)
stem(n,u);
xlabel('Time');
ylabel('Amplitude');

u=(n-no>=2);
subplot(2,2,2)
stem(n,u);
xlabel('Time');
ylabel('Amplitude');

u=(n-no>=-2);
subplot(2,2,3)
stem(n,u);
xlabel('Time');
ylabel('Amplitude');