 function y = roundn(x)
 % Rounds number or array x to n decimal digits
 n = 0.05;
 y = round(x ./ n) * n;
 end
 % Example usage
 clc; clear;
 % Single number
 x1 = 3.1415926;
 y1 = roundn(x1);
 fprintf("Original: %.7f,\n Rounded to %d digits: %.3f",x1,y1);
