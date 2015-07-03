%En este sabor a conbolucion lineal, x e h son handles a funciones
%esto es nesesario tratarlo aparte de la otra LinearConvolution
%ya que redimensiona x e y, y usa lenght esta
function [ res ] = LinearConvolutionHandles( x, h, range )

    % y[n] = sumk( x[k] * h[n-k] )
    %donde y[n] sera distinto de cero para 1-length(x)+length(h)-1
    
    res = zeros(1, max( [range+range-1 , range, range] ) );
    
    for n= 1:length(res)
        for k= 0:n-1%length(h) this are vectors and we multiply until we can
            res(n) = res(n) + x(k+1) * h(n-k);
        end
    end

end
