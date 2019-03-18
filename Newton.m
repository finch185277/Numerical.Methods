function root = Newton(f,df,x0,tol)
while abs(f(x0)) > tol,
    x1 = x0 - f(x0)/df(x0);
    h0 = plot(x0, f(x0), 'o');
    h1 = plot(x1, f(x1), 'x');
    l = line([x0, x1], [f(x0), f(x1)], 'color', 'red');
    x0 = x1;
    pause;
    delete(h0);
    delete(h1);
    delete(l);
end
root = x0;
