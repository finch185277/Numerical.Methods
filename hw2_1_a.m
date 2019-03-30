clc
clear all
n = 3;
A = [2.51 1.48 4.53; 1.48 0.93 -1.3; 2.68 3.04 -1.48];
b = [0.05; 1.03; -0.53];
gauss_elimination(n, A, b);
