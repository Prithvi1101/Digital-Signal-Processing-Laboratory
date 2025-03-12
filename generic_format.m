clc;clear all;close all;

n1=[-2:1];
x=[1,2,3,4];
n2=[-1:2];
h=[2,3,4,5];
y=conv(x,h);
subplot(3,1,1);
stem(n1,x);
xlabel('n');
ylabel('z');
title('X');
grid on;

subplot(3,1,2);
stem(n2,h);
xlabel('n');
ylabel('z');
title('H');
grid on;

t1=n1(1)+n2(1);%duita signal er 1st position add korlam ashe -3
t2=length(x)+length(h)-1;%output er total length ber korlam x er total length 4 erpor minus korlam so 7
t3=t1:(t2-(abs(t1)+1));%-3 theke 7 hoye jay so heres the generic format so(7-(3+zero position er jonno 1 add korlam))
subplot(3,1,3);
stem(t3,y);
xlabel('n');
ylabel('z');
title('Z');
grid on;
