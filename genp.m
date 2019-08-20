function [L,U] = genp(A)

    n = size(A,1);
    for k = 1:n-1
        A(k+1:n,k) = A(k+1:n,k)/A(k,k);
        for i = k+1:n
            A(i,k+1:n) = A(i,k+1:n) - A(i,k)*A(k,k+1:n);
        end
      U = triu(A);
      L= eye(n)+tril(A,-1);
      LU = L*U;
    end
    % [L,U] = genp(A)
    % [x] = solveupper(U,solvelower(L,b))