function [L,U,p] = gepp(A)

    n = size(A,1);
    p = 1:n;
    for k = 1:n-1
        [~,m] =   max(abs(A(k:n,k)));
        m = k-1+m;
        
        if m ~= k 
            p([k,m]) = p([m,k]);
            A([k,m],:) = A([m,k],:);
        end
        A(k+1:n,k) = A(k+1:n,k)/A(k,k);
        for i = k+1:n
            A(i,k+1:n) = A(i,k+1:n) - A(i,k)*A(k,k+1:n);
        end
      U = triu(A);
      L= eye(n)+tril(A,-1);
    end
    
    % [L,U,p] = gepp(A)
    % A(p,:)  should be equal to LU 