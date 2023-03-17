
function ConvDist = ConvergenceDist(T, M, N, d)
    ConvDist = zeros(1,length(d));
    n = N;
    for i = 1 : 1 : length(d)
    x = 0;
        for m1 = 1 : 1 : M
            if (T(m1,n)) <= d(i)
            x = x + 1;
            end
        end
    ConvDist(1,i) = x/M;
    end
end
