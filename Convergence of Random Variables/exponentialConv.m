%From reference paper we have to compute for 500 Realisations and Sample
%size as for transformation as 2000
function [T, convProb, ASconvergence, error, ConvDist] = exponentialConv()
M = 500;
N = 2000;
T = zeros(M,N);
exp_T = zeros(1,N);

for i = 1:M
    exp_T = exprnd(0.5,1,N);

    len = length(exp_T);
    sum1 = 0;
    s = zeros(1,len);
    Tr = zeros(1,len);
    for j = 1 :1: len
        s(j) = sum1 + exp_T(j);
        sum1 = s(j);
        Tr(j) = s(j)/j; 
        
    end
    T(i, 1:1:N) = Tr;
end

%Convergence in Probability
e = 0.05;
mean = 0.5;
convProb = ConvergenceProb(T,e,mean, M);

%Almost Sure Convergence
K = 0.5;
e = 0.05;
ASconvergence = ASconv(T, e, K, mean, M, N);

%Mean Square
error = meansquare(T,mean, M, N);

%Convergence in Distribution
d = -1:0.00001:1;
ConvDist = ConvergenceDist(T, M, N, d);
end
