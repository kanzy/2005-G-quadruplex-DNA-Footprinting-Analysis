function y=foot7(x,p)

y=[x(1)*(x(4)+x(5)+x(6)+x(2)) - p(1);
    x(1)*(1-x(1))*(x(5)+x(6)+x(2)) - p(2);
    x(1)*((1-x(1))^2)*(x(6)+x(2)) - p(3);
    x(1)*((1-x(1))^3)*x(2) - p(4);
    x(1)*((1-x(1))^4)*x(2) + x(1)*x(3) - p(5);
    x(1)*((1-x(1))^5)*x(2) + x(1)*(1-x(1))*(x(3)+x(4)) - p(6);
    x(3)+x(4)+x(5)+x(6)+x(2)-1 ];
