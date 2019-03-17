clear all;
%xn = x - f(x) / f'(x)

f = inline('x.^2+sin(x)-exp(x)/4-1', 'x');
x = -4:0.02:4;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
x0 = -2;
x1 = 0;
root = secant(f, x0, x1, tol);
