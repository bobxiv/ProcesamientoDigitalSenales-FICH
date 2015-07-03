function [ res ] = LinearConvolution( x, h )

    % y[n] = sumk( x[k] * h[n-k] )
    %donde y[n] sera distinto de cero para 1-length(x)+length(h)-1
    
    res = zeros(1, max( [length(x)+length(h)-1 , length(x), length(h)] ) );
    
    %this is what it makes it just linear
    extraZeros1 = zeros(1,length(h));
    extraZeros2 = zeros(1,length(x));
    x = [x extraZeros1];
    h = [h extraZeros2];
    
    for n= 1:length(res)
        for k= 0:n-1%length(h) this are vectors and we multiply until we can
            res(n) = res(n) + x(k+1) * h(n-k);
        end
    end

end


