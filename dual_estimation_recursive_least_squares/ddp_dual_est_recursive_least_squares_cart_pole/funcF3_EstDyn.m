function [F3] = funcF3_EstDyn(w,x2,x4,u)

% global m;
% global M;
% global l;
global g;

F3 = (w(2)*g*sin(x2)*cos(x2) + w(3)*(x4^2)*sin(x2))/(w(1) + w(2)*sin(x2)^2) + u*1/(w(1) + w(2)*sin(x2)^2);

end