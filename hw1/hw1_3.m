clear all;

% f = inline('(4 + 2*x.^3) ./ x.^2 - 2*x', 'x');
f = inline('sqrt(4 ./ x)', 'x');
% f = inline('(16 + x.^3) ./ (5*x.^2)', 'x');
x = -1:0.01:5;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
x0 = 1;
root = fixed_point(f, x0, tol);
disp(root);
