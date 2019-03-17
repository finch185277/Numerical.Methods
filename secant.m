function root = secant(f, x0, x1, tol)

while (abs(f(x1)) > tol)
  h0 = plot(x0, f(x0), 'x');
  h1 = plot(x1, f(x1), 'o');
  l = plot([x0, x1], [f(x0), f(x1)], 'color', 'red');
  x2 = x1 - f(x1) * (x1-x0) / (f(x1)-f(x0));
  x0 = x1;
  x1 = x2;
  pause;
  delete(h0);
  delete(h1);
  delete(l);
end
root = x1;
