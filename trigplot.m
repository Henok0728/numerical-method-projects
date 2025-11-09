%My first script .m
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

plot(x,y1,"r",x,y2,"b");
title("graph of y=sin(x) and y=cosx");
xlabel("X");
ylabel("Y");
legend("y=sin(x)","y=cos(x)");