global p

%//input P1-6 here:
p=[
0.04532998
0.0415629
0.04050761
0.02474582
0.02827066
0.03065332
];
%p=input('input data:\n')
disp('P1 -- P6=')
disp(p)


x0=[0.1,0.2,0.2,0.2,0.2];
options=optimset('fsolve');
warning off Optimization:fsolve:NonSquareSystem
x=fsolve(@qs2, x0, options);

disp('p=')
disp(x(1))
disp('R=')
disp(x(2))
disp('Q4=')
disp(x(3))
disp('Q5=')
disp(x(4))
disp('Q6=')
disp(x(5))
disp('Q7=')
Q=1-(x(2)+x(3)+x(4)+x(5));
disp(Q)

