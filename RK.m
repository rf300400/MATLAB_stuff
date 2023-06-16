clear all;
clc;
syms f(x,y)
f(x,y) = x + (y.^2) ;
h = input('Enter interval size\n');
x0 = input('Enter initial value of x\n');
y0 = input('Enter initial value of y\n');
xt = input('Enter target value of x\n');
while x0 < xt
    k1 = h*f(x0,y0);
    k2 = h*f((x0+(h/2)),(y0+(k1/2)));
    k3 = h*f((x0+(h/2)),(y0+(k2/2)));
    k4 = h*f((x0+h),(y0+k3));
    k = (1/6)*(k1 + (2*k2) + (2*k3) + k4);
    y0 = y0 + k ;
    fprintf('For x = %f y = %f\n',x0,y0);
    x0 = x0 + h ;
end
