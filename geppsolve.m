function [x] = geppsolve(A,b)

[L,U,p] = gepp(A);
 [x] = solveupper(U,solvelower(L,b(p)));
 
     
    % [x] = geppsolve(A,b)
    % A*x  should be equal to b