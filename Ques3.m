t1 = 1:20;
t2 = 1:20;
i = 1;
for n=200:50:1150
 A = rand(n);
 b = rand(n,1); 
 tic
 x = A\b;
 
 t1(i) = toc;
 tic 
 x = inv(A)*b;
 t2(i) = toc;
 i = i+1;
end
hold on
plot(200:50:1150,log(t1))
plot(200:50:1150,log(t2))
legend('A\b','inv(A)*b')
xlabel('Size')
ylable('time(log scale')
hold off