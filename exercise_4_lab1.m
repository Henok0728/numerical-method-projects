clc; close all;
clear all;
x=0:0.1:5;
e=exp(1);
y1=e.^(-x);
y2=e.^(-2.*x);
plot(x,y1,'+')
hold on
plot(x,y2,'r-')
xlabel('x');
ylabel('y');
title('Exponential Decay');
legend('y=e^(-x)','y=e^(-2x)');
