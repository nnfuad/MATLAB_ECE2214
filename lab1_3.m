clc;
clear;
close all;

f = @(x) x^3 - x - 2;

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
    fprintf('\nIter\t a\t\t b\t\t mid\t\t f(mid)\t\t update\n');
    for i = 1:max_iter
        mid = (a + b) / 2;
        fmid = f(mid);
        
        if f(a)*fmid <= 0
            fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %s\n', i, a, b, mid, fmid, bb);
        else
            fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %s\n', i, a, b, mid, fmid, aa);
        end
        

        % convergence
        if abs(fmid) < tol
            fprintf('\nConverged to root: %.6f in %d iterations\n', mid, i);
            break;
        end

        
        if f(a)*fmid <= 0
            b = mid;
        else
            a = mid;
        end

        if i == max_iter
            fprintf('\nStopped at iteration %d.\nApproximate root = %.6f\n', i, mid);
        end
    end
end