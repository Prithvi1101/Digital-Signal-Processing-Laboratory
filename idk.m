% Prithviraj_2254901101
clc; clear all; close all;
dt = 0.0005; 
t = 0:dt:1; 
xa = sin(2*pi*20*t); % Original analog signal
% Sampling and reconstruction for Ts = 0.025
figure; % Create a new figure
subplot(3,1,1);
plot(t, xa, 'black');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Analog Signal (Ts = 0.025)');
grid on;
Ts1 = 0.025;
Fs1 = 1/Ts1; % Sampling frequency
n1 = 0:Ts1:1; % Sampling instants
x1 = sin(2*pi*20*n1); % Sampled signal
subplot(3,1,2);
stem(n1, x1, 'r');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal (Ts = 0.025)');
grid on;
% Reconstruction
xr1 = x1 * sinc(Fs1 * (ones(length(x1), 1) * t - n1' * ones(1, length(t))));
subplot(3,1,3);
plot(t, xr1, 'r');
xlabel('Time (s)');
ylabel('Amplitude');
title('Reconstructed Signal (Ts = 0.025)');
grid on;
% Error computation
error1 = max(abs(xa - xr1));
disp(['Max Error for Ts = 0.025: ', num2str(error1)]);
%% Sampling and reconstruction for Ts = 0.022
figure; % Create a new figure
subplot(3,1,1);
plot(t, xa, 'black');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Analog Signal (Ts = 0.022)');
grid on;
Ts2 = 0.022; % Sampling period
Fs2 = 1/Ts2; % Sampling frequency
n2 = 0:Ts2:1; % Sampling instants
x2 = sin(2*pi*20*n2); % Sampled signal
subplot(3,1,2);
stem(n2, x2, 'g');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal (Ts = 0.022)');
grid on;
% Reconstruction
xr2 = x2 * sinc(Fs2 * (ones(length(x2), 1) * t - n2' * ones(1, length(t))));
subplot(3,1,3);
plot(t, xr2, 'g');
xlabel('Time (s)');
ylabel('Amplitude');
title('Reconstructed Signal (Ts = 0.022)');grid on;
% Error computation
error2 = max(abs(xa - xr2));
disp(['Max Error for Ts = 0.022: ', num2str(error2)]);
%% Sampling and reconstruction for Ts = 0.01
figure; % Create a new figure
subplot(3,1,1);
plot(t, xa, 'black');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Analog Signal (Ts = 0.01)');grid on;
Ts3 = 0.01; % Sampling period
Fs3 = 1/Ts3; % Sampling frequency
n3 = 0:Ts3:1; % Sampling instants
x3 = sin(2*pi*20*n3); % Sampled signal
subplot(3,1,2);
stem(n3, x3, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal (Ts = 0.01)');grid on;
% Reconstruction
xr3 = x3 * sinc(Fs3 * (ones(length(x3), 1) * t - n3' * ones(1, length(t))));
subplot(3,1,3);
plot(t, xr3, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Reconstructed Signal (Ts = 0.01)');
grid on;% Error computation
error3 = max(abs(xa - xr3)); 
disp(['Max Error for Ts = 0.01: ', num2str(error3)]);
