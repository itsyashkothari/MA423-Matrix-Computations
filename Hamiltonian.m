function [ H] =Hamiltonian( n )
t = tril(randn(n));
h12 = t+ t';
h11 = randn(n);
H = [h11 h12 ; h12' -1.*h11'];
end

