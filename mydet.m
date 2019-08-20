function [x] = mydet(A)
    [~,U,p] = gepp(A);
    swaps = 0;
    for i = 1:size(A,1)
        for j = 1:i-1
            if p(i)<p(j)
                swaps = swaps + 1;
            end
        end
    end
    if mod(swaps,2) ==0
        sigma = 1;
    else
        sigma = -1;
    end
    x = sigma*prod(diag(U));
end

% [x] = mydet(A)
% x should be equal to det(A)