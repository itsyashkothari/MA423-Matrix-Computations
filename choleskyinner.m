function [R] = choleskyinner(A)
    n = size(A,1);
    for i = 1:n
        for k = 1:i-1
            A(i,i) = A(i,i) - A(k,i)*A(k,i);
        end
        if A(i,i) <= 0 
           disp('A is not positive definite');
        end
        A(i,i) = sqrt(A(i,i));
        for j = i+1:n
            for k = 1:i-1
                A(i,j) = A(i,j) - A(k,i)*A(k,j);
            end
            A(i,j) = A(i,j)/A(i,i);
       end
    end
    
    R = triu(A);
    disp(A);
end
