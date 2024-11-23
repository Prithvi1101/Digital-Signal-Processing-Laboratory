% Define the x values (positive, as log is undefined for 0 or negative values)
x = 1:0.1:10;

% Compute the natural logarithm of x
y = log(x);

% Plot the graph
figure;
plot(x, y, 'b', 'LineWidth', 2);
grid on;

% Add labels and title
xlabel('x');
ylabel('log(x)');
title('Logarithmic Graph (y = log(x))');
