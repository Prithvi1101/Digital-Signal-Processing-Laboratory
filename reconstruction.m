%Prithviraj_2254901101
clc;clear all;close all;
dt=0.00005
t=-0.005:dt:0.005;
xa=exp(-1000*abs(t));
subplot(4,1,1);
plot(t*1000,xa,'black');
xlabel('Time');  
ylabel('Amplitude');  
title('Original Signal');  
grid on;
%sampling rate fs=1000
Fs=4000; %sampling frequency
Ts=1/Fs; %sampling inerval
n=-25:25;
xd = exp(-1000*abs(n*Ts)); %sampled so t=n*Ts
subplot(4,1,2);
stem(n,xd,'g');
xlabel('Time');  
ylabel('Amplitude');  
title('Sampled signal at Fs=5000');  
grid on;
%reconstruction
nTs=n*Ts;
xr = xd*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(4,1,3)
plot(t,xr,'r')
xlabel('Time');  
ylabel('Amplitude');  
title('Reconstructed Signal');  
grid on;
Error= max(abs(xa-xr))
grid on;