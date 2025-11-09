clc; clear; close all;

% 1. initalizing a vector of 50 random numbers between 0 and 100
vector = 100 * rand(1, 50);

% 2. Compute mean , variance, min and maximum
mean_val = mean(vector);
var_val  = var(vector);
max_val  = max(vector);
min_val  = min(vector);
% 3.create normalize vector
function x_norm = normalize(x)
%Normalizes and  Scales vector x to range [0, 1]

    min_val = min(x);
    max_val = max(x);

    % Prevent divide-by-zero if all values are equal
    if  max_val == min_val
        x_norm = zeros(size(x));
    else
        x_norm = (x - min_val) / (max_val - min_val);
    end
end
% 4. Normalize the data using your custom function
data_norm = normalize(vector);
mean_val2 = mean(data_norm);
var_val2  = var(data_norm);
max_val2  = max(data_norm);
min_val2  = min(data_norm);
% 5. Plot original vs normalized data
figure;

subplot(2,1,1);
histogram(vector);
title('Original vector');
xlabel('Index');
ylabel('Value');

subplot(2,1,2);
histogram(data_norm);
title('Normalized vector [0, 1]');
xlabel('Index');
ylabel('Normalized Value');

% 6. Print statistics
fprintf('--- Statistics of Original Data ---\n');
fprintf('Mean:      %.4f\n', mean_val);
fprintf('Variance:  %.4f\n', var_val);
fprintf('Maximum:   %.4f\n', max_val);
fprintf('Minimum:   %.4f\n', min_val);
%normalized data
fprintf('--- Statistics of Normalized Data ---\n');
fprintf('Mean:      %.4f\n', mean_val2);
fprintf('Variance:  %.4f\n', var_val2);
fprintf('Maximum:   %.4f\n', max_val2);
fprintf('Minimum:   %.4f\n', min_val2);
