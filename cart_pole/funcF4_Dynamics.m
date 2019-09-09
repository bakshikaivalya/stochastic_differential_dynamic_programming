function [F4] = funcF4_Dynamics(x2,x4,u)

global m;
global M;
global l;
global g;

% F4 = (g/l)*sin(x2) + (m*g*sin(x2)*cos(x2) - m*l^2*(x4^2)*sin(x2)*cos(x2))/(M + m*sin(x2)^2)/l + u*cos(x2)/(M + m*sin(x2)^2)/l;

F4 = (-(M + m)*g*sin(x2) - m*l^2*(x4^2)*sin(x2)*cos(x2))/(M + m*sin(x2)^2)/l - u*cos(x2)/(M + m*sin(x2)^2)/l;

end