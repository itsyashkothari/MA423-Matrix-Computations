function [x] = genpsolve(A,b)

[L,U] = genp(A);
 [x] = solveupper(U,solvelower(L,b));
 
     
    % [x] = genpsolve(A,b)
    % A*x  should be equal to b