function y=foot4v3(x,p)

% 1=p, 2=R, 3=Q1, 4=q.

y=[x(1)*x(2) - p(1) + x(3)*x(4);
    x(1)*(1-x(1))*x(2) - p(2) + x(3)*(1-x(4))*x(4);
    x(1)*((1-x(1))^2)*x(2) - p(3) + x(3)*((1-x(4))^2)*x(4);
    x(3)+x(2)-1 ];