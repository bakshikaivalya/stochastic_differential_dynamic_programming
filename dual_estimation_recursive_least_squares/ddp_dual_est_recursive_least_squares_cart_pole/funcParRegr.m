function [w, par] = funcParRegr(alpha, X)

% y = zeros(size(X,1));
Phi = zeros(size(X,2), 3); % size(Phi)

g = 9.81; %m/s

% size(X,2)
for i = 1:1:size(X,2)
    
    x2 = X(1,i);
    x4 = X(2,i);
    u = X(3,i);
    Phi(i,:) = [funcF3_PureDyn(x2,x4,u); funcF3_PureDyn(x2,x4,u)*sin(x2)^2 - g*cos(x2)*sin(x2);...
        -x4^2*sin(x2)]';
    y(i,1) = u;
    
end

%     size(y)
%     size(Phi)
    w = (Phi'*Phi + alpha*eye(size(Phi,2)))^(-1)*Phi'*y;

    par = [w(1); w(2); sqrt(abs(w(3)/w(2)))];
%     par = [w(1); w(2)/w(1)];
    
end

% clear X
% for i = 1:1:75
%     X(:,i) = [x_traj(2,i) x_traj(4,i) u_new(i)];
% end

% for iter = 1:1:10
%     [w, p] = funcParRegr(phat, X);
%     phat = p;
% end