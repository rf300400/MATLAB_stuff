clc;
clear all;
theta = 0 : 0.025 : (2*pi);
phi = 0 : 0.025 : (2*pi);
k = 2*pi;
l = (1/(4*pi));
I = 1 ; n = 120*pi ;
%Urad = (I*n/(8*pi*pi))*((cos(k*l*sin(theta)./2)-cos(k*l./2))./(cos(theta).^2));
Urad = k*l*sin(theta)./2;
Urad = cos(Urad) - cos(k*l./2);
Urad = Urad * I * n ./ (8*pi*pi);
Urad = Urad ./ (cos(theta).^2);
UdB = 10 * log10(Urad);
Umin = min(UdB);
U = UdB - Umin;
for i = 1 : 1 : length(theta)
    theta(i,:) = theta(1,:);
end
phi = phi';
for i = 1 : 1 : length(phi)
    phi(:,i) = phi(:,1);
end
for i = 1 : 1 : length(U)
    U(i,:) = U(1,:);
end
[x , y , z] = sph2cart(phi,theta,U);
surf(x,y,z);
