function root = bisection(f, a, b, tol)

while (abs(f(a) - f(b)) > tol)
  m = (a + b) / 2;
  h = plot(m, f(m), 'o');
  if ( f(a) * f(m) > 0)
    a = m;
  else
    b = m;
  end
  pause;
  delete(h);
end
root = a;
