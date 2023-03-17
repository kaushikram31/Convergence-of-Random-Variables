
%% Mean Square Convergence 
function error = meansquare(T,mean, M, N)
    e = (T-mean).^2;
    error = sum(e)/M;
end