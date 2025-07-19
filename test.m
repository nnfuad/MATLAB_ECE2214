clc;
clear;

% Generate x values from 0 to 2π
x = linspace(0, 2*pi, 100);

% Calculate y = sin(x)
y = sin(x);

% Plot the graph
plot(x, y, 'b-', 'LineWidth', 2);
title('Graph of y = sin(x)');
xlabel('x (radians)');
ylabel('y = sin(x)');
grid on;