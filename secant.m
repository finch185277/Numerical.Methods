function root = secant(f, x0, x1, tol)

while (abs(f(x1) - f(x0)) > 1)
  h = plot(x1, f(x1), 'o');
  x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
  if (f(x2) * f(x0) < 0)
    x1 = x2;
  else
    x0 = x2;
  end
  pause;
  delete(h);
end
root = x1;
