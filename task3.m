%Prithviraj_2254901101
clc;
clear all;
close all;
n=-5:1:5;
x=[zeros(1,5),ones(1,1),zeros(1,5)];
stem(n,x);
xlabel('time');
ylabel('Amplitude');
title('Unit Impulse Signal');