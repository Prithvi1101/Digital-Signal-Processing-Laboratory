%Prithviraj_2254901101
clc;clear all;close all;
dt=0.00005
t=-0.005:dt:0.005;
xa=exp(-1000*abs(t));
subplot(4,1,1);
plot(t*1000,xa);
title('Generated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
%sampling rate fs=5000
Fs=5000; %sampling frequency
Ts=1/Fs; %sampling inerval
n=-25:25;
xd = exp(-1000*abs(n*Ts)); %sampled so t=n*Ts
subplot(4,1,2);
stem(n,xd,'r');
title('Sampled Signal at Fs=5000');
xlabel('Time');
ylabel('Amplitude');
grid on;
%sampling rate fs=4000
Fs=4000; %sampling frequency
Ts=1/Fs; %sampling inerval
n=-25:25;
xd = exp(-1000*abs(n*Ts)); %sampled so t=n*Ts
subplot(4,1,3);
stem(n,xd,'g');
title('Sampled Signal at Fs=4000');
xlabel('Time');
ylabel('Amplitude');
grid on;
%sampling rate fs=1000
Fs=1000; %sampling frequency
Ts=1/Fs; %sampling inerval
n=-25:25;
xd = exp(-1000*abs(n*Ts)); %sampled so t=n*Ts
subplot(4,1,4);
stem(n,xd);
title('Sampled Signal at Fs=1000');
xlabel('Time');
ylabel('Amplitude');
grid on;
%2254901101_Prithviraj