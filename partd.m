%2254901101_Prithviraj
clc; close all; clear all; 
ustep = inline('double(n>=0)'); 
n=[0:7]; 
xn = 0.25.*(0.9).^n.*ustep(n)+(5/9).*(n+1).*(0.9).^(n+1).*ustep(n+1)+0.25.*(0.9).^n.*ustep(n) 
subplot(211); 
stem(n, xn); 
xlabel('n'); 
ylabel('x(n)'); 
title('MATLAB verification: Analytical approach'); 
% Numerical approach 
uimpulse = inline('double(n==0)'); 
% numerator coeffcients 
b = [5.5, 3.5 , -8]; 
% denominator coefficients 
a = [1,-0.5,0.5]; 
xn = filter(b, a, uimpulse(n)) 
subplot(212) 
stem(n,xn,'r+--'); 
xlabel('n'); 
ylabel('x(n)'); 
title('Numerical approach');