format short;
clear all ; clc;
x = input('Enter x');
y = input('Enter y');
z = input('Enter value of target x');
yl = length(y);
A = zeros(yl,yl);
A(:,1) = y';
if z <= x(floor(yl/2))
    fprintf('y(%f) = %f',z,fwd(A,yl,x,z));
else
    fprintf('y(%f) = %f',z,bck(A,yl,x,z));
end
function s = fwd(A,yl,x,z)
fprintf('Performing Forward interpolation\n');
for i = 2 : 1 : yl
    for j = 1: 1 : yl-i+1
        A(j,i) = A(j+1,i-1) - A(j,i-1);
    end
end
i = 1 ;
while x(i) < z
    i = i + 1;
end
anchor = i - 1 ;
p = (z-x(anchor))/(x(2)-x(1));
s = A(anchor,1) ;
g = p ;
i = 2  ;
while i <= yl
    s = s + (g * (A(anchor,i) / factorial(i-1))) ;
    p = p - 1 ;
    g = g * p ;
    i = i + 1 ;
end
end
function s = bck(A,yl,x,z)
fprintf('Performing backward interpolation\n');
for i = 2 : 1 : yl
    for j = yl: -1 : i
        A(j,i) = A(j,i-1) - A(j-1,i-1);
    end
end
i = 1 ;
while x(i) < z
    i = i + 1;
end
anchor = i ;
p = (z-x(anchor))/(x(2)-x(1));
s = A(anchor,1) ;
g = p ;
i = 2 ;
while i <= yl
    s = s + (g * (A(anchor,i) / factorial(i-1))) ;
    p = p + 1 ;
    g = g * p ;
    i = i + 1 ;
end
end
