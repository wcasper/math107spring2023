% part (a)
x = -1:0.01:1

% part (b)
y1 = x.*exp(-x.^2);
y2 = x.*(1-x.^2);
y3 = x - x.^3 + (1/2)*x.^5;

% part (c)
hold on 
plot(x,y1,'ro')
plot(x,y2,'b--')
plot(x,y3,'g.')


% part (d)
xlabel("x")
ylabel("y")
legend("y1","y2","y3")

