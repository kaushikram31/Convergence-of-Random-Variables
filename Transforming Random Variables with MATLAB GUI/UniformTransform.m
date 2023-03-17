N = 10000;
U = zeros(N,N);
for w = 1:N
    for k = 1:N
        Ur = unifrnd(2,4);
        U(w,k) = Ur;
    end
end

X1 = sum(U)/N;
fprintf('Sample size N = %d \n', N )
fprintf('Mean for M = %f \n', mean(X1))
fprintf('Variance for M = %f \n', var(X1))
figure(1)
histogram(X1)
grid on;
xlabel('Random Variable')
ylabel('PDF')
title(['Transformed U~[2,4] for Sample size ', num2str(N)])
