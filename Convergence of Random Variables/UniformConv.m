%From reference paper we have to compute for 500 Realisations and Sample
%size as for transformation as 2000
function [T, convProb, ASconvergence, error, ConvDist] = UniformConv()
M = 500;
N = 2000;
T = zeros(M,N);
%U = zeros(1,N);

for i = 1:M
    U = randi([2 4],1,N);
    len = length(U);
    c = 0;
    sum = zeros(1,len);
    Tr = zeros(1,len);
    for j = 1 :1: len
        sum(j) = c + U(j);
        c = sum(j);
        Tr(j) = sum(j)/j; 
        
    end
    T(i, 1:1:N) = Tr;
end

%Convergence in Probability
e = 0.01;
mean = 3;
convProb = ConvergenceProb(T,e,mean, M);

%Almost Sure Convergence
K = 3;
e = 0.01;
ASconvergence = ASconv(T, e, K, mean, M, N);

%Mean Square
error = meansquare(T,mean, M, N);

%Convergence in Distribution
d = -2:0.00001:4;
ConvDist = ConvergenceDist(T, M, N, d);
end