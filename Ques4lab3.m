function Ques4lab3(n)
A = rand(n);
A(1,1)  = 50*eps*A(1,1);
[L,U] = gepp(A);
[norm(L) norm(U) norm(L*U - A)]
[L,U,P] = lu(A);
[norm(L) norm(U) norm(L*U - P*A)]
end

