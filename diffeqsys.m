syms x(t) y(t);
ode1 = diff(x) == x+y;%dx eq
ode2 = diff(y) == x+y;%dy eq
ode = [ode1; ode2];
cond1 = x(0) == 0;%ivp
cond2 = y(0) == 0;%ivp
cond = [cond1; cond2]
[xsol, ysol] = dsolve(ode); %general solution
[xsol1, ysol1] = dsolve(ode, cond) %ivp solution
pretty(xsol)
pretty(ysol)
pretty(xsol1)
pretty(xsol2)
