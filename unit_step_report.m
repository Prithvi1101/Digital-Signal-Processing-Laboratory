
%Prithviraj_2254901101
clc;clear all;close all;
% a)Create Unit Step signals: u(n), u(n-8), u(n+12) for n = -25:25
n = -25:25;
u_n = (n >= 0);
u_n_minus_8 = (n >= 8);
u_n_plus_12 = (n >= -12);

% b)In each case plot impulse signal Vs. n Using the MATLAB function stem ( ).
% c)Level the X and Y coordinate and use a title of the generated signals.
subplot(3,1,1);
stem(n, u_n);
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal u(n)');
grid on;

subplot(3,1,2);
stem(n, u_n_minus_8);
xlabel('Time');
ylabel('Amplitude');
title('Shifted Unit Step Signal u(n-8)');
grid on;
subplot(3,1,3);
stem(n, u_n_plus_12);
xlabel('Time');
ylabel('Amplitude');
title('Shifted Unit Step Signal u(n+12)');
grid on;
