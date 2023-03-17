N = 10000; %change to 100, 1000, 10000
U = zeros(1,N);
for w = 1:N
Ur = unifrnd(2,4);
U(w) = Ur;
end
figure()
subplot(1,2,1)
histogram(U)
xlabel('Random Variable')
ylabel('PDF')
title(['Matlab U~[2,4] for Sample size ', num2str(N)])
fprintf('Sample size N = %d \n', N )
fprintf('Matlab Mean for M = %f \n', mean(U))
fprintf('Matlab Variance for M = %f \n', var(U))

%Rejection
c = 0.5;
X = zeros(N,1); 
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v = unifrnd(2,4);
        if c*u <= 0.5
           X(i) = v;
           accept = true;
        end
    end
end
X = X.';
subplot(1,2,2)
histogram(X)
grid on; 
xlabel('Random Variable')
ylabel('PDF')
title(['Rejection U~[2,4] for Sample size ', num2str(N)])
fprintf('Rejection Mean for M = %f \n', mean(X))
fprintf('Rejection Variance for M = %f \n', var(X))


    
   

