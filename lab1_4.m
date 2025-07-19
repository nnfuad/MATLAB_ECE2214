clc;
clear;
close all;

f = @(x) x^3 + x^2 + x + 7;

a = input('Enter the lower bound (a): ');
b = input('Enter the upper bound (b): ');
aa = "a";
bb = "b";

tol = input('Enter the tolerance (e.g., 0.0001): ');
max_iter = input('Enter maximum number of iterations: ');

% Check if root is bracketed
if f(a) * f(b) > 0
    disp('f(a) and f(b) must have opposite signs. No root guaranteed.');
else
    fprintf('\nIter\t a\t\t b\t\t x\t\t f(x)\t\t update\n');
    for i = 1:max_iter
        c = f(a);
        d = f(b);
        x = (a*d - b*c) / (d-c);
        fx = f(x);
        

        if f(a)*fx <= 0
            fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %s\n', i, a, b, x, fx,bb);
        else
            fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %s\n', i, a, b, x, fx,aa);
        end
        
        % convergence
        if abs(fx) < tol
            fprintf('\nConverged to root: %.6f in %d iterations\n', x, i);
            break;
        end

        
        if f(a)*fx <= 0
            b = x;
        else
            a = x;
        end

        if i == max_iter
            fprintf('\nStopped at iteration %d.\nApproximate root = %.6f\n', i, x);
        end
    end
end