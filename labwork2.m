%2254901101_Prithvi
clc; close all; clear all;
n = 0:7;
ustep = inline('double(n >= 0)');
x = (1/2) * (1).^n .* ustep(n) + (-1/6) * (1/3).^n .* ustep(n);
subplot(2, 1, 1);
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Analytical Approach');
% Numerical solution
b = [1, 0]; % Numerator coefficients
a = [3, -4, 1]; % Denominator coefficients
xn = filter(b, a, ustep(n));
subplot(2, 1, 2);
stem(n, xn);
xlabel('n');
ylabel('x[n]');
title('Numerical Approach');
