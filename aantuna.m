clc;
clear all;
% 2-D radiation pattern of dipole antenna
tiledlayout(2,3);
antinnu(1/4);
title('l = λ/4')
antinnu(1/2);
title('l = λ/2')
antinnu(1);
title('l = λ')
antinnu(3/2);
title('l = 3λ/2')
antinnu(2);
title('l = 2λ')

function antinnu(l)
    theta=[0.001:0.0001:(2*pi)];
    k = (2*pi);
    E=abs(((cos(((k*l)/2)*cos(theta)))-cos((k*l)/2))./sin(theta));
    nexttile;
    polarplot(theta,E); 
end
