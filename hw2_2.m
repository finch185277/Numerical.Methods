clc
clear all
n = 6;
A = [  4 -1  0 ;
      -1  4 -1 ;
      -1  4 -1 ;
      -1  4 -1 ;
      -1  4 -1 ;
       0 -1  4 ];
b = [100; 200; 200; 200; 200; 100];
% gauss_elimination(n, A, b);

n = 6;
a = [ 0  0  0  0  0  0;
     -1  0  0  0  0  0;
      0 -1  0  0  0  0;
      0  0 -1  0  0  0;
      0  0  0 -1  0  0;
      0  0  0  0 -1  0 ];
b = [ 4  0  0  0  0  0;
      0  4  0  0  0  0;
      0  0  4  0  0  0;
      0  0  0  4  0  0;
      0  0  0  0  4  0;
      0  0  0  0  0  4 ];
c = [ 0 -1  0  0  0  0;
      0  0 -1  0  0  0;
      0  0  0 -1  0  0;
      0  0  0  0 -1  0;
      0  0  0  0  0 -1;
      0  0  0  0  0  0 ];
compacted_sol(a, b, c, n);

% n = 6;
% A = [ 4 -1  0  0  0  0;
%      -1  4 -1  0  0  0;
%       0 -1  4 -1  0  0;
%       0  0 -1  4 -1  0;
%       0  0  0 -1  4 -1;
%       0  0  0  0 -1  4 ];
% b = [100; 200; 200; 200; 200; 100];
% gauss_elimination(n, A, b);
