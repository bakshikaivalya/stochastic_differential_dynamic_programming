function [F4] = funcF4_DynEst(w,x2,x4,u)

global m;
global M;
global l;
global g;

% F4 = (g/l)*sin(x2) + (m*g*sin(x2)*cos(x2) - m*l^2*(x4^2)*sin(x2)*cos(x2))/(M + m*sin(x2)^2)/l + u*cos(x2)/(M + m*sin(x2)^2)/l;

F4 = (-(w(1) + w(2))*g*sin(x2) - w(3)*(x4^2)*sin(x2)*cos(x2))/(w(1) + w(2)*sin(x2)^2)/sqrt(w(3)/w(2)) - u*cos(x2)/(w(1) + w(2)*sin(x2)^2)/sqrt(w(3)/w(2));

end