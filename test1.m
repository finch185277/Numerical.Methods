clear all;
%xn = x - f(x) / f'(x)

f = inline('x.^2+sin(x)-exp(x)/4-1', 'x');
x = -4:0.02:4;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
a = -2;
b = 0;
root = bisection(f, a, b, tol);
