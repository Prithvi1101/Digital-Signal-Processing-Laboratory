% Prithviraj_2254901101
clc; clear all; close all;
% Original signal
dt = 0.001; 
t = 0:dt:1; 
f = 10; % Frequency of the sine wave
xa = sin(2 * pi * f * t);
% Original signal
figure;
subplot(4, 1, 1);
plot(t, xa, 'k');
title('Original Analog Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% For Ts = 0.025
Ts1 = 0.025;
Fs1 = 1 / Ts1;
n1 = 0:round(1/Ts1);
x1 = sin(2 * pi * f * n1 * Ts1);
t_recon1 = t;
xr1 = x1 * sinc(Fs1 * (ones(length(n1), 1) * t_recon1 - n1' * Ts1));
error1 = max(abs(xa - xr1)); % Calculate error for Ts1
subplot(4, 1, 2);
plot(t_recon1, xr1, 'g');
hold on;
plot(t, xa, 'k--'); % Overlay original signal
title('Reconstructed Signal (Ts = 0.025)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% For Ts = 0.022
Ts2 = 0.022;
Fs2 = 1 / Ts2;
n2 = 0:round(1/Ts2);
x2 = sin(2 * pi * f * n2 * Ts2);
t_recon2 = t;
xr2 = x2 * sinc(Fs2 * (ones(length(n2), 1) * t_recon2 - n2' * Ts2));
error2 = max(abs(xa - xr2)); % Calculate error for Ts2
subplot(4, 1, 3);
plot(t_recon2, xr2, 'b');
hold on;
plot(t, xa, 'k--'); % Overlay original signal
title('Reconstructed Signal (Ts = 0.022)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% For Ts = 0.01
Ts3 = 0.01;
Fs3 = 1 / Ts3;
n3 = 0:round(1/Ts3);
x3 = sin(2 * pi * f * n3 * Ts3);
t_recon3 = t;
xr3 = x3 * sinc(Fs3 * (ones(length(n3), 1) * t_recon3 - n3' * Ts3));
error3 = max(abs(xa - xr3)); % Calculate error for Ts3
subplot(4, 1, 4);
plot(t_recon3, xr3, 'r');
hold on;
plot(t, xa, 'k--'); % Overlay original signal
title('Reconstructed Signal (Ts = 0.01)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% Store errors in the workspace
Max_Error_Ts_025 = error1;
Max_Error_Ts_022 = error2;
Max_Error_Ts_01 = error3;
