function y=foot4(x,p)

y=[x(1)*x(2) - p(1);
    x(1)*(1-x(1))*x(2) - p(2);
    x(1)*((1-x(1))^2)*x(2) - p(3);
    x(3)+x(2)-1 ];