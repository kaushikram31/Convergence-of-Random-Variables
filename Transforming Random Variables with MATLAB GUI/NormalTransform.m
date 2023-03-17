N = 10000;
Normal = zeros(N,N);
for w = 1:N
    for k = 1:N
        Normr = normrnd(2,2);
        Normal(w,k) = Normr;
    end
end
X1 = sum(Normal)/N;
fprintf('Sample size N = %d \n', N )
fprintf('Mean for M = %f \n', mean(X1))
fprintf('Variance for M = %f \n', var(X1))
figure(1)
histogram(X1)
grid on;
xlabel('Random Variable')
ylabel('PDF')
title(['Tranformed N~[2,2] for Sample size ', num2str(N)])