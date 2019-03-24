function root = fixed_point(f, x0, tol)

y0 = f(x0);
while (abs(x0-y0) > tol)
  p0 = plot(x0, f(x0), 'o');
  p1 = plot(y0, f(y0), 'x');
  x0 = y0;
  y0 = f(x0);
  pause;
  delete(p0);
  delete(p1);
end

root = y0;
