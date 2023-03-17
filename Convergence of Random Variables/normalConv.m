%From reference paper we have to compute for 500 Realisations and Sample
%size as for transformation as 2000
function [T, convProb, ASconvergence, error, ConvDist] = normalConv()
M = 500;
N = 2000;
T = zeros(M,N);
Normal = zeros(1,N);

for i = 1:M
    for w = 1:N
        Normr = normrnd(2,2);
        Normal(w) = Normr;
    end


    len = length(Normal);
    sum1 = 0;
    s = zeros(1,len);
    Tr = zeros(1,len);
    for j = 1 :1: len
        s(j) = sum1 + Normal(j);
        sum1 = s(j);
        Tr(j) = s(j)/j; 
        
    end
    T(i, 1:1:N) = Tr;
end

%Convergence in Probability
e = 0.05;
mean = 2;
convProb = ConvergenceProb(T,e,mean, M);

%Almost Sure Convergence
K = 0.5;
ASconvergence = ASconv(T, e, K, mean, M, N);

%Mean Square
error = meansquare(T,mean, M, N);

%Convergence in Distribution
d = -2:0.00001:4;
ConvDist = ConvergenceDist(T, M, N, d);
end