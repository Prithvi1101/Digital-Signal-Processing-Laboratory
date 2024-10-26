clc;clear all;close all;

x = -9:0.1:9
y=sin(x)+cos(2*x)

subplot(2,2,1)
plot(y)
title('THIS IS A PLOT');
xlabel('Sample');
ylabel('Value');
grid on

subplot(2,2,4)
stem(y)
title('THIS IS A STEM');
xlabel('Time');
ylabel('Frequency');