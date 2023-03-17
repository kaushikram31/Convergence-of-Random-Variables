function ConvProb = ConvergenceProb(T,e,mean, M)
    ConvProb = zeros(1,length(T));
    for n = 1:1: length(T)
    x = 0;
        for m = 1 : 1 : M
            if ((T(m,n)-mean) > e) 
            x = x + 1;
            elseif ((T(m,n)-mean) < (-1*e))
            x = x + 1;
            end
        end 
    ConvProb(1,n)= x/M;
    end
end
