function [ g ] = Gabor( N )
% Ventana de Gabor
%   Uso
%    g = Gabor(x)
%   Entadas
%       - N cantidad de muestras de la ventana deseada
%   Salidas
%       - g ventana de gabor de N muestras

    %t = [ceil(-N/2)+1:1:floor(N/2)];
    t = [-1:2/(N-1):1];

    g = exp( (-18*t.^2)/2 );

end

