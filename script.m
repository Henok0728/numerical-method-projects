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

%example implementation of the normalization function
vector = [10 20 30 40 50];
disp(vector);
disp(normalize(vector));