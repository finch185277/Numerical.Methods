function F = hw1_4_fsol(v)

x = v(1);
y = v(2);
z = v(3);

F(1) = x - 3*y - z.^2 + 3;
F(2) = 2*x.^3 + y - 5*z.^2 + 2;
F(3) = 4*x^2 + y + z - 7;

end
