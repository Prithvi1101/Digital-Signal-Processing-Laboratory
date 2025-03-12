%2254901101_Prithvi
clc;close all;clear all;
n = [0:7]; % Define range for n
ustep = inline('double(n>=0)');
deln= (n==0)
x = 5.5 * (0.5).^n .* ustep(n) + 3.5 * (-0.5).^n .* ustep(n) - 8 * deln;
subplot(211);
stem(n, x); 
xlabel('n');
ylabel('x(n)');
title('Analytical Approach');
u_imp= inline('double(n==0)')
b = [5.5, 3.5,-8]; % Numerator coefficients
a = [1, -0.5, 0.5]; % Denominator coefficients
xn = filter(b, a, u_imp(n)); 
subplot(212);
stem(n, xn); 
xlabel('n');
ylabel('x(n)');
title('Numerical Approach');
