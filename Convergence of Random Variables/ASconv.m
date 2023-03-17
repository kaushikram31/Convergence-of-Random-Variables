function ASconvergence = ASconv(T,e, K, mean, M, N)
    ASconvergence = zeros(1,(K*N));
    for i = 1:1: (K*N)
    x = 0;   
        for m = 1 : 1 : M
            for n = i : 1 : N
                if ((T(m,n)-mean) > e) 
                x = x + 1;
                break;
                elseif ((T(m,n)-mean) < (-1*e))
                x = x + 1;
                break;
                end
            end
        end  
    ASconvergence(1,i)= x/M;
    end

end