N = 10000; %change to 100, 1000, 10000
Normal = zeros(1,N);
Normal = (sqrt(2).*randn(1,N)+2);
figure()
subplot(1,2,1)
histogram(Normal)
xlabel('Random Variable')
ylabel('PDF')
title(['Matlab N~[2,2] for Sample size ', num2str(N)])
fprintf('Sample size N = %d \n', N )
fprintf('Matlab Mean for M = %f \n', mean(Normal))
fprintf('Matlab Variance for M = %f \n', var(Normal))

%Rejection
c = 1/(sqrt(2*2*pi));
X = zeros(N,1);
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v = -10 + (10+10).*rand();
        pdfnorm = (exp(-((v-2)^2/4)))/(sqrt(2*2*pi)); %pdf of normal distribution for N~(2,2)
        if c*u <= pdfnorm
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
title(['Rejection N~[2,2] for Sample size ', num2str(N)])
fprintf('Rejection Mean for M = %f \n', mean(X))
fprintf('Rejection Variance for M = %f \n', var(X))


    
   

