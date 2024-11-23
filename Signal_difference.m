clc;
clear all;
close all;
n=5:0.5:20;
u=[n-9>=0] - [n-16>=0];
stem(n,u);