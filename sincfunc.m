%Prithviraj_2254901101
clc;clear all;close all;
x = -10:0.01:10;  % x values from -10 to 10 with a step size of 0.01
y = sinc(x);      % MATLAB's sinc function expects argument to be scaled by pi
plot(x, y,'r');
grid on;
xlabel('x');
ylabel('sinc(x)');
title('Plot of sinc(x)');
