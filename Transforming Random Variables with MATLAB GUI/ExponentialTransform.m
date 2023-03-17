N = 10000;
expo = exprnd(0.5,N,N);
X1 = sum(expo)/N;
fprintf('Sample size N = %d \n', N )
fprintf('Mean for M = %f \n', mean(X1))
fprintf('Variance for M = %f \n', var(X1))
figure(1)
histogram(X1)
grid on;
xlabel('Random Variable')
ylabel('PDF')
title(['Transformed exp~[2] for Sample size ', num2str(N)])