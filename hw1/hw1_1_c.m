clear all;
%xn = x - f(x) / f'(x)

f = inline('x.^2+sin(x)-exp(x)/4-1', 'x');
df = inline('2*x.^1+cos(x)-exp(x)/4', 'x');
x = -4:0.02:4;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
x0 = -2;
root = Newton(f, df, x0, tol);
