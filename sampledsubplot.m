%Prithviraj_2254901101
clc;clear all;close all;
% Generated Signal
f = 10; % Frequency of the signal
T = 1 / f; % Period of the signal
td = T / 100; % Time resolution
t = 0:td:4*T; % Time vector for 4 cycles
x = sin(2 * pi * 10 * t); % Sine wavefigure;
plot(t, x); %Generated signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Generated Signal');grid on;
% Sampled Signal
figure;
% Sampling with fs = 100 Hz
fs = 100;
Ts = 1 / fs;
t1 = 0:Ts:3*T;
xs = sin(2 * pi * 10 * t1);
subplot(3, 1, 1); 
stem(t1, xs, 'r'); %sampled signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal Fs = 100 Hz');grid on;
% Sampling with fs = 50 Hz
fs = 50;
Ts = 1 / fs;
t1 = 0:Ts:3*T;
xs = sin(2 * pi * 10 * t1);
subplot(3, 1, 2); 
stem(t1, xs, 'g');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal Fs = 50 Hz');grid on;
% Sampling with fs = 20 Hz
fs = 20;
Ts = 1 / fs;
t1 = 0:Ts:3*T;
xs = sin(2 * pi * 10 * t1);
subplot(3, 1, 3); 
stem(t1, xs, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal Fs = 20 Hz');grid on;
