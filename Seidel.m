clc;
clear all;
A = input('Enter equation matrix with augmentation\n');
l = length(A) - 1
B = zeros(l,l+1);
ite = 0;
for i = 1 : 1 : l %Switches between columns
    pos = 1 ;
    for j = 1 : 1 : l %Switches between rows
        sumy = 0;
        for k = 1 : 1 : l %Summation of all elements except augmentation and ith column of jth row
            if k ~= i
                sumy = sumy + abs(A(j,k));
            end
        end
        if A(j,i) > sumy
            if A(j,i) > A(pos,i)
                pos = j ;
            end
        end
    end
    B(i,:) = A(pos,:);
end
B
A = zeros(1,l);
temp = inf(1,l);
while abs(sum(temp) - sum(A)) > (1e-10)
    if sum(temp) ~= inf
        A = temp;
    end
    for i = 1 : 1 : l
        temp(1,i) = B(i,l+1) ;
        for j = 1 : 1 : l
            if j ~= i
                temp(1,i) = temp(1,i) - (B(i,j)*A(1,j));
            end
        end
        temp(1,i) = temp(1,i) / B(i,i);
    end
    ite = ite + 1;
end
ite
A
