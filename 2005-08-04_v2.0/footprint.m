%//2005-08-04 FootPrint.m: for analyzing  data of Foot Printing assay.

r=input('Please input exp mode (R4, R5, R6 or R7):\n');
if((r~=4)&(r~=5)&(r~=6)&(r~=7))
    error('Error! Input a number of 4 or 5 or 6 or 7')
end

p_raw=input('Please input the Intensities of bands bottom-up as [Bands1 Bands2 Bands3...]:\n');

ref_band=input('Please input the Intensity of Reference band:\n');
ref_ratio=input('Please input the Intensity Ratio of Reference band (Ref lane / Sample lane):\n');

p=(p_raw/(ref_band/ref_ratio))';

%%//Here is a short-cut for p input:
% p=[
% 0.07453541
% 0.06848008
% 0.05150912
% 0.02788578
% 0.03391681
% 0.03965274
% ];

options=optimset('fsolve');
options=optimset('NonlEqnAlgorithm','gn');

switch r
    case 4
        [x,feval,exitflag]=fsolve(@foot4, [0.1,0.5,0.5], options, p);
        disp('p=')
        disp(x(1))
        disp('R %=')
        disp(100*x(2))
        disp('Q1 %=')
        disp(100*x(3))
        pie([x(2),x(3)],[1,0])
    case 5
        [x,feval,exitflag]=fsolve(@foot5, [0.1,0.3,0.3,0.3], options, p);
        disp('p=')
        disp(x(1))
        disp('R %=')
        disp(100*x(2))
        disp('Q1 %=')
        disp(100*x(3))
        disp('Q2 %=')
        disp(100*x(4))
        pie([x(2),x(3),x(4)],[1,0,0])
    case 6
        [x,feval,exitflag]=fsolve(@foot6, [0.1,0.3,0.3,0.3,0.3], options, p);
        disp('p=')
        disp(x(1))
        disp('R %=')
        disp(100*x(2))
        disp('Q1 %=')
        disp(100*x(3))
        disp('Q2 %=')
        disp(100*x(4))
        disp('Q3 %=')
        disp(100*x(5))   
        pie([x(2),x(3),x(4),x(5)],[1,0,0,0])        
    otherwise
        [x,feval,exitflag]=fsolve(@foot7, [0.1,0.2,0.2,0.2,0.2,0.2], options, p);
        disp('p=')
        disp(x(1))
        disp('R %=')
        disp(100*x(2))
        disp('Q1 %=')
        disp(100*x(3))
        disp('Q2 %=')
        disp(100*x(4))
        disp('Q3 %=')
        disp(100*x(5))   
        disp('Q4 %=')
        disp(100*x(6))      
        pie([x(2),x(3),x(4),x(5),x(6)],[1,0,0,0,0])         
end
        