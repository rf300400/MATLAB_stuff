format long;
clear all;
clc;
syms f(x) fd(x)
f(x) = (x.^3)-(x)-1;
fd(x) = diff(f(x),x);
ite = 1;
x0 = input('Enter initial guess\n');
x0 = x0 - double(f(x0)/fd(x0));
while double(f(x0)) > 1e-6
    x0 = x0 - double(f(x0)/fd(x0));
    ite = ite + 1 ;
end
fprintf('x = %f in %f iterations\n',x0,ite);
err = f(x0);
fprintf('Final answer deviates from 0 by %f',err);
