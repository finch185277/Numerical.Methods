clear all;
%xn = x - f(x) / f'(x)

f = inline('((x-2).^3) .* ((x-4).^2)', 'x');
df = inline('(5*x-16) .* ((x-2).^2) .* (x-4)', 'x');
x = 1:0.001:5;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
x0 = 3;
root = Newton(f, df, x0, tol);
