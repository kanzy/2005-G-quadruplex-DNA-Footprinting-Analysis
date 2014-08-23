function y=foot5v3(x,p)

% 1=p, 2=R, 3=Q1, 4=Q2, 5=q.
y=[x(1)*(x(4)+x(2)) - p(1) + x(3)*x(5);
    x(1)*(1-x(1))*x(2) - p(2) + x(3)*(1-x(5))*x(5) + x(4)*(1-x(1))*x(5);
    x(1)*((1-x(1))^2)*x(2) - p(3) + (x(3)*(1-x(5))*x(5) + x(4)*(1-x(1))*x(5))*(1-x(5));
    x(1)*((1-x(1))^3)*x(2) - p(4) + (x(3)*(1-x(5))*x(5) + x(4)*(1-x(1))*x(5))*((1-x(5))^2);
    x(3)+x(4)+x(2)-1 ];