function [b] = solveupper(A,b)

    n = size(A,1);
    
    for j = n:-1:1
        
        b(j) = b(j)/A(j,j);
        for i = j-1:-1:1
            b(i) = b(i) - A(i,j)*b(j);
        end
    end