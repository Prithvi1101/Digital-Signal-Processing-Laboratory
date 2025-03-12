clc; clear all; close all;
n1=-2:1;
x = [1, 2, 3, 4];
n2=-1:2;
h = [2, 3, 4, 5];
z = conv(x, h);
subplot(3,1,1);
stem(n1,x);
xlabel('n');
ylabel('z');
title('X');
subplot(3,1,2);
stem(n2,h);
xlabel('n');
ylabel('z');
title('H');
subplot(3,1,3);
stem(z);
xlabel('n');
ylabel('z');
title('After Convolution');
grid on;

