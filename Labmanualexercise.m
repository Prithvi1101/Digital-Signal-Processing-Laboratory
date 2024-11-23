%Prithviraj_2254901101
clc;clear all;close all;
dt = 0.01;
f = 10;
t = -1:dt:1;
xa = sin(2 * pi * f * t);
subplot(4, 1, 1);
plot(t, xa, 'r');
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
%For Ts=0.025;
Ts1 = 0.025;
n1 = -40:40;
x1 = sin(2 * pi * f * n1 * Ts1);
subplot(4, 1, 2);
stem(n1, x1, 'g');
title('Sine Wave (Sampled, Ts = 0.025)');
xlabel('Time');
ylabel('Amplitude');
%For Ts=0.022;
Ts2 = 0.022;
n2 = -45:45;
x2 = sin(2 * pi * f * n2 * Ts2);
subplot(4, 1, 3);
stem(n2, x2, 'black');
title('Sine Wave (Sampled, Ts = 0.022)');
xlabel('Time');
ylabel('Amplitude');
%For Ts=0.01;
Ts3 = 0.01;
n3 = -100:100;
x3 = sin(2 * pi * f * n3 * Ts3);
subplot(4, 1, 4);
stem(n3, x3, 'b');
title('Sine Wave (Sampled, Ts = 0.01)');
xlabel('Time');
ylabel('Amplitude');
grid on;
