function [R] = cholesky(A)  

    n = size(A,1);
    if A(1,1) <= 0
        disp('Not positive definite');
    end
    
    if( n ==1)
       R  = sqrt(A(1,1));
    else
    r11 = sqrt(A(1,1));
    b = A(2:n,1);
    s = b/r11;
    At = A(2:n,2:n) - s*s';
    R = [ r11 s';zeros(n-1,1) cholesky(At)];
    end 
       % test 
       % M = randn(5);
       % A = M*M';
       % [R] = cholesky(A)
       % R'*R should be equal to A

end