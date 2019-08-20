function [ A ] = Wilkinson( n )

A = tril(-1.*ones(n),-1) +eye(n);
A(:,n) = 1;
end

