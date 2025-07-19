% 1.2: Calculate Average of User Input Numbers
clc;
clear;
close all;

n = input('How many numbers do you want to enter? ');
sum = 0;

for i = 1:n
    x = input(['Enter number ' num2str(i) ': ']);
    sum = sum + x;
end

average = sum/ n;
fprintf('The average of the %d numbers is: %.2f\n', n, average);