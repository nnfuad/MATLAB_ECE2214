clc
clear all
close all
nrows = 4;
ncols = 6;
A = ones(nrows,ncols);
A
for c = 1:ncols
    for r = 1:nrows
        
        if r == c
            A(r,c) = 2;
        elseif abs(r-c) == 1
            A(r,c) = -1;
        else
            A(r,c) = 0;
        end
        
    end
end
A

%1.1 Write a matlab code for checking odd and even number.
%1.2 ................... to calculate the average of user input number.
