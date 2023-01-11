%% Problem 1
% define your variables a,b,c below
a = (2-3^pi)/6 + exp(-sqrt(2))*sin(pi/12);
b = sqrt(pi + 1)*(exp(3)-3)/(exp(3)-5);
c = 1.2^3.1 + (2 + 3*sqrt(2))/4;

%% Problem 2
% define your variables x,y,z,w, and q below
x = 2.1;
y = 3.3;
z = (y+x)/(y-x);
w = x^y;
q = (x^2-y^2)/(z^2-w^2) + w*x*y*z;

%% Problem 3

% define variable T_room and set it to the room temperature
T_room = 18;
% define variable T_0 and set it to the temperature of a living human
T_0 = 37;
% define a variable r and set it equal to the specific heat capacitance
r = 0.13353;
% define a variable T and set it equal to the temperature the body was discovered at
T = 20;

% now use the equation above to determine the time it took for the body to cool
% make sure to use the variable t for your result!!
t = -(1/r)*log((T-T_room)/(T_0-T_room));
