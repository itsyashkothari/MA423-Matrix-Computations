function residue(n)

H = hilb(n);
x = randn(n,1);
b = H*x;
x1 = H\b;
r = H*x1-b;
[norm(r) norm(x-x1)]
    % No
end

