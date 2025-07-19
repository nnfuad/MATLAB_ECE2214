%1.1 Write a matlab code for checking odd and even number.
clc;
clear;
close all;

num = input('Enter a number: ');

if mod(num, 2) == 0
    disp('The number is EVEN.');
else
    disp('The number is ODD.');
end