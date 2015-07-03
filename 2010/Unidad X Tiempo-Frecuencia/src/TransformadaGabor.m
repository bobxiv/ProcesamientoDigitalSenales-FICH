function G=TransformadaGabor(x, Wwidth, overlap, fm, t)    
% Transformada de Gabor -- Usando FFT
%   Uso
%    G = TransformadaGabor(x, Wwidth, overlap, fm, t)    
%   Entadas
%       - x       señal a la cual transformar
%       - Wwidth  cantidad de elementos por ventana
%       - overlap solapamiento de las ventanas
%       - fm      frequencia de muestreo(opcional)
%       - t       vector de tiempos(opcional)
%   Salidas
%       - G la matriz de transformacion G[a,t]

    if nargin < 5,
		t = [1:length(x)];
	end
	if nargin < 4,
		fm=length(x);
    end

    dt = t(2)-t(1);

    %Paso entre ventanas
    step = Wwidth - overlap;
    %Cantidad de ventanas
    Wcount = floor( (length(x)-step)/step );
    
    Window = Gabor(Wwidth)';
    G = zeros(Wwidth,Wcount);
    for wi= 1:Wcount
        
        ini = (wi-1)*step+1;
        fin = ini+Wwidth -1;
        
        %Por definicion de espectrograma:
        % E = | STFT |.^2
        
        %aux = length(x(ini:fin));
        %aux = length(norm( fft( x(ini:fin)*Window ) ).^2);
        
        G(:,wi) = fft( x(ini:fin).*Window );
        
    end
    
end

