clc; clear; close all;

% 1. initalizing a vector of 50 random numbers between 0 and 100
vector = 100 * rand(1, 50);

% 2. Compute mean , variance, min and maximum
mean_val = mean(vector);
var_val  = var(vector);
max_val  = max(vector);
min_val  = min(vector);

% 3. Plotting a histogram data
figure;
histogram(vector);
title('Histogram of Random Data');
xlabel('Value');
ylabel('Frequency');

% 4. Displaying  results with formatted text
fprintf('--- Statistics of Generated Data ---\n');
fprintf('Mean:      %.4f\n', mean_val);
fprintf('Variance:  %.4f\n', var_val);
fprintf('Maximum:   %.4f\n', max_val);
fprintf('Minimum:   %.4f\n', min_val);