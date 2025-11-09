close all;
clear all;
clc;
g=@(x) cos(x);
gp_exact=@(x)-sin(x);% function derivative
x0=1.2;
g0=g(x0);
gp=gp_exact(x0);
f=@(x)e.^x;
fp_exact=f;% function derivative
f0=f(x0);
fp=fp_exact(x0);
i=-20:0.5:0; %step sizes
h=10.^i;
fp_approx1=(f(x0+h)-f0)./h;
fp_approx2=(f(x0+h)-f(x0-h))./(2.*h);

gp_approx1=(g(x0+h)-g0)./h;%derivative approximation using forward difference formula for cos(x)
gp_approx2=(g(x0+h)-g(x0-h))./(2.*h);% derivative approximation using central difference formula for cos(x)
format shorte
%abs_err1=abs(fp-fp_approx1); %absolute discretization error using forward difference formula for e^x
abs_err1=abs(fp-fp_approx1); %absolute discretization error using forward difference formula for e^x
abs_err2=abs(fp-fp_approx2);% %absolute discretization error using central difference formula for e^x
abs_err3=abs(gp-gp_approx1); %absolute discretization error using forward difference formula for cos(x)
abs_err4=abs(gp-gp_approx2);%absolute discretization error using central difference formula for cos(x)

d_err1=abs(f0).*h/2;% first order theoretical error for e^x
d_err3=abs(g0).*h./2;% first order theoretical error for cos(x)
hold on
loglog(h,abs_err4,'c','Linewidth',1.2,'DisplayName','cos(x) E_{central}');
hold on
loglog(h,abs_err3,'r','LineWidth',1.2,'DisplayName', 'cos(x)_{forward Error}');
hold on
loglog(h,abs_err1,'b','LineWidth',1.2,'DisplayName','e^x_{forward Error}');
hold on
loglog(h,d_err1,'g','Linewidth',1.2,'DisplayName','e^x_{theoretical err}');
hold on
loglog(h,d_err3,'Linewidth',1.2,'DisplayName','cos(x)_{theoretical err}')

legend('Location','Southeast');
xlabel('Step Size h');
ylabel('Error');
title('Table1: Discretization error in Derivative Approximation of cos(x) and e^x ');
grid on;
disp('         h     c^x error     cos(x) error');
disp([h; abs_err1; abs_err3]');

