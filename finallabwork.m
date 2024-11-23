% OMI-2254901093
clc;
clear all;
close all;

% Parameters
dt = 0.01; % Time step for the analog signal
f = 10;    % Frequency of the analog signal

% Time vector for analog signal
t = 0:dt:1; 
% Generate the analog signal
xa = sin(2 * pi * f * t);

% Plot the analog signal
subplot(3, 1, 1);
plot(t, xa, 'r');
title('Analog Signal (sin wave)');
xlabel('Time');
ylabel('Amplitude');

% Sampling period and frequency
Ts1 = 0.02;       % Sampling period
Fs1 = 1 / Ts1;    % Sampling frequency

% Define discrete sample points
n1 = -45:45;      % Sampling indices
Tn = n1 * Ts1;    % Sample times
% Generate the sampled signal
x1 = sin(2 * pi * f * Tn);

% Plot the sampled signal
subplot(3, 1, 2);
stem(Tn, x1, 'g', 'filled');
title('Sampled Signal (sin wave)');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Reconstruction using sinc interpolation
nT1 = n1 * Ts1; % Time instances for the discrete signal
% Reconstructed signal
xr = x1 * sinc(Fs1 * (ones(length(n1), 1) * t - nT1' * ones(1, length(t))));

% Plot the reconstructed signal
subplot(3, 1, 3);
plot(t, xr, 'b');
title('Reconstructed Signal (sin wave)');
xlabel('Time');
ylabel('Amplitude');

% Calculate and display the maximum reconstruction error
error = max(abs(xa - xr));
disp(['Maximum reconstruction error: ', num2str(error)]);
