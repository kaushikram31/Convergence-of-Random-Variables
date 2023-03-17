N = 10000; %change to 100, 1000, 10000
expo = exprnd(0.5,1,N);
figure()
subplot(1,2,1)
histogram(expo)
xlabel('Random Variable')
ylabel('PDF')
title(['Matlab exp~[2] for Sample size ', num2str(N)])
fprintf('Sample size N = %d \n', N )
fprintf('Matlab Mean for M = %f \n', mean(expo))
fprintf('Matlab Variance for M = %f \n', var(expo))


%Rejection
c = 2;
X = zeros(N,1);
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v =  6.*rand();
        pdfexp = 2*exp(-2*v); 
        if c*u <= pdfexp
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
title(['Rejection exp~[2] for Sample size ', num2str(N)])
fprintf('Rejection Mean for M = %f \n', mean(X))
fprintf('Rejection Variance for M = %f \n', var(X))



    
   

