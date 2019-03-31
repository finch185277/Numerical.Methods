clc
clear all

n = 3;
A = [  4.63 -1.21  3.22 ;
      -3.07  5.48  2.11 ;
       1.26  3.11  4.57 ];
x = [0 0 0]'
b = [2.22 -3.17 5.11]';

fprintf('\n(a) ');
Gauss_Seidel(A, x, b, n);
fprintf('\n(b) ');
Jacobi(A, x, b, n);
