 function y = roundn(x, n)
 % Rounds number or array x to n decimal digits
 factor = 10.^n;
 y = round(x .* factor) ./ factor;
 end
 % Example usage
 clc; clear;
 % Single number

 matrix1 = [1.234,2.345,3.678;4.321,5.345,6.987;7.123,8.567,9.98];

 n = 2;
 matrix2 = roundn(matrix1,2);
disp("Original matrix:");
disp(matrix1);

disp("Rounded to " + n + " digits:");
disp(matrix2);

