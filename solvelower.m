function [b] = solvelower(A,b)

    n = size(A,1);
    
    for j = 1:n
        b(j) = b(j)/A(j,j);
        for i = j+1:n
            b(i) = b(i) - A(i,j)*b(j);
        end
    end