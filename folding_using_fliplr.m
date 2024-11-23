%Prithviraj_2254901101
clc;clear all;close all;
n=-15:0.5:15;
x=n;
y=fliplr(x);
%for normal folding we use fliplr.
stem(n,y);
xlabel('Time');
ylabel('Amplitude');
title('Folding using fliplr in MATLAB');
grid on;