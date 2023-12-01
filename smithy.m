clc;
clear all;
axis equal
axis off
hold on
for r = [0,.1,.2,.5,1,2,5,10,20]
    radioosx = (1/(1+r));
    centx = (r/(1+r));
    i = 1;
    for thatta = 0.01 : 0.01 : (2*pi)
        x(i) = centx+(radioosx*(cos(thatta)));
        y(i) = (radioosx*(sin(thatta)));
        i = i + 1;
    end
    plot(x,y,'k');
end
for r = [.1,.2,.5,1,2,5,10,20]
    radioos = 1/r;
    centy = (1/r);
    centx = 1;
    i = 1;
    for thatta = 0 : 0.01 : (3*pi/2)
        xtemp = centx+(radioos*(cos(thatta)));
        ytemp = centy+(radioos*(sin(thatta)));
        if (sqrt(xtemp.^2 + ytemp.^2) <= 1)
            x(i) = centx+(radioos*(cos(thatta)));
            y(i) = centy+(radioos*(sin(thatta)));
            i = i + 1;
        end
    end
    plot(x,y,'k');
end
for r = [.1,.2,.5,1,2,5,10,20]
    radioos = 1/r;
    centy = (1/r);
    centx = 1;
    i = 1;
    for thatta = 0 : 0.01 : (3*pi/2)
        xtemp = centx+(radioos*(cos(thatta)));
        ytemp = centy+(radioos*(sin(thatta)));
        if (sqrt(xtemp.^2 + ytemp.^2) <= 1)
            x(i) = centx+(radioos*(cos(thatta)));
            y(i) = -(centy+(radioos*(sin(thatta))));
            i = i + 1;
        end
    end
    plot(x,y,'k');
end
