%Prithviraj_2254901101
clc;clear all;close all;
n = 0:1:7;
%delayed unit step signal
u_n = (n >= 2);
subplot 311
stem(n, u_n);
title('Unit Step Signal u(n)');
xn = [(n-2).*(1/2).^(n-2).*cos(pi*(n-2)/3)].*u_n
subplot 312
stem(n,xn);
%LTI er co-efficients denominator in a and num in b
%000 in b because -3 theke shuru hoise
b = [0,0,0,0.25,-0.5,0.0625];
a = [1,-1,0.75,-0.25,0.0625];
%impulse signal
del_n = (n==0);
%filter 
xn = filter(b, a, del_n)
subplot 313 
stem(n,xn);
xlabel('n');
ylabel('x(n)');
title('MATLAB verification: Numerical approach');

