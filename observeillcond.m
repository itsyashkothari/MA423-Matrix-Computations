function observeillcond()

    C1 = [];
    C2 = [];
    Cinf = [];
    N = 2:2:16;
    for n = N
        H = hilb(n);
        C2 = [C2;cond(H)];
        C1 = [C1;cond(H,1)];
        Cinf = [Cinf;cond(H,inf)];
    end
    semilogy(N,C1,'r');
    figure;
    semilogy(N,C2,'b');
    figure;
    semilogy(N,Cinf,'g');
    
end

