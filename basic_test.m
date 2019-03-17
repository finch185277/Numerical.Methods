clear all;
%xn = x - f(x) / f'(x)

f = inline('x.^3+sin(x)+5', 'x');
df = inline('3*x.^2+cos(x)', 'x');
x = -5:0.02:4;
plot(x,f(x), 'b');
hold on;
grid;

tol = 1e-5;
x0=3;

%while abs(f(x0)) > tol,
%    x1 = x0 - f(x0)/df(x0);
%    plot(x1, f(x1), 'o');
%    x0 = x1;
%    pause;
%end

root = Newton(f,df,x0,tol);
