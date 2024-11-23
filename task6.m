clc;clear all;close all;
n=0:10;
x=n;
x=(-n).*(n<=0)
y=fliplr(x);
stem(n,x);
