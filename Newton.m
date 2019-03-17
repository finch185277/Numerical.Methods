function root = Newton(f,df,x0,tol)
while abs(f(x0)) > tol,
    x1 = x0 - f(x0)/df(x0);
    h = plot(x1, f(x1), 'o');
    hh = line([x0, x1], [f(x0), 0], 'color', 'red');
    x0 = x1;
    pause;
    delete(h);
    delete(hh);
end
root = x0;
