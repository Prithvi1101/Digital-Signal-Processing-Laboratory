%2254901101_Prithviraj
clc;close all; clear all; 
b=1; 
% denominator coeffcients 
P=[0.9,0.9,-0.9]; 
a=poly(P) 
[R,P,C]=residuez(b,a) 