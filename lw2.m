%2254901101_Prithvi
clc;close all; clear all; 
b=[0,1]; 
% denominator coeffcients 
P=[3,-4,1]; 
% roots of the polynomial a diye polynomial root calc korlam
a=poly(P) 
% residue, pole and direct part 
[R,P,C]=residuez(b,a) 

%R is uporer part ta