clc; close all ; clear all;

g=@(x)cos(x.^5)+x
g(0)
g(pi/2)
g(pi)
x=-5:.001:5;
y=g(x);
d=cos(x.^5)+x;
subplot(2,1,1),fplot(g,[-5,5]);
xlabel('x')
ylabel('g(x)')
subplot(2,1,2),plot(x,y,'Linewidth',1.5);
xlabel('x')
ylabel('y' )
