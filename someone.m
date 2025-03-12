clc;
close all;
clear all;
ustep = inline('double(n>=0)');
n = [0:7];
xn = [(n-2).*(1/2).^(n-2).*cos(pi*(n-2)/3)].*ustep(n-2)
subplot(211);
stem(n,xn);
uimpulse = inline('double(n==0)');

b = [0,0,0,0.25,-0.5,0.0625];

a = [1,-1,0.75,-0.25,0.0625];

xn = filter(b, a, uimpulse(n))
subplot(212)
stem(n,xn);
xlabel('n');
ylabel('x(n)');
title('MATLAB verification: Numerical approach');