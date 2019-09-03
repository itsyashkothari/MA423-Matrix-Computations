function ruleofthumb(n)
 H = hilb(n);
 x = randn(n,1);
 b = H*x;
 x3 = H\b; % This is cholesky
 x1 = invhilb(n)*b;
 x2 = geppsolve(H,b); % GEPP
  [x x1 x2 x3];
 ch =  [ norm(x-x1)/norm(x) norm(x-x2)/norm(x) norm(x-x3)/norm(x)]
 cond1 = cond(H);
 p=-10;
 while 1
    if cond1 <(10^p)
        break;
    end
     p=p+1;
 end 
 t = p-1;
 actual =[];
 for x = ch
     p = 20;
     while 1
        if(x < 0.5*((10)^(-p)))
            break;
        end
         p=p-1;
     end 
     actual = [actual;p];
 end
 actual
 rule = 16 -t
 % geppsolve is the best 
end

