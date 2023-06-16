clear all;
clc;
syms f(x)
f(x) = exp(x);
a = input('Lower limit\n');
b = input('Upper limit\n');
h = input('Interval size\n');
sodd = 0 ; seve = 0 ; eve = 0 ; s = f(0) + f(b);
a = a + h ;
while a < b-h
    if eve == 1
        seve = seve + f(a);
        eve = 0;
    else
        sodd = sodd + f(a);
        eve = 1;
    end
    a = a + h ;
end
s = (s + (2*seve) + (4*sodd))*h/3;
double(s)
