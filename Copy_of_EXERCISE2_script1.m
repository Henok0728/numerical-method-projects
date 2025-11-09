close all;
clear all;
clc;
g=@(x) sin(x);
gp_exact=@(x)cos(x);% function derivative
x0=1.2;
g0=g(x0);
gp=gp_exact(x0);
i=-20:0.5:0; %step sizes
h=10.^i;
gp_approx1=(g(x0+h)-g0)./h;%derivative approximation using forward difference formula for sin(x)
gp_approx2=(g(x0+h)-g(x0-h))./(2.*h);% derivative approximation using central difference formula for sin(x)
format shorte
abs_err3=abs(gp-gp_approx1); %absolute discretization error using forward difference formula for sin(x)
abs_err4=abs(gp-gp_approx2);%absolute discretization error using central difference formula for sin(x)
loglog(h,abs_err4,'c','Linewidth',1.2,'DisplayName','sin(x) E_{central}');
hold on
loglog(h,abs_err3,'r','LineWidth',1.2,'DisplayName', 'sin(x)_{forward Error}');
legend('Location','Southeast');
xlabel('Step Size h');
ylabel('Error');
title('Table1: Discretization errors due to forward and central difference formula in Derivative Approximation of sin(x) ');
grid on;
