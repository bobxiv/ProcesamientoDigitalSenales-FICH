function E=Espectrograma(x, Wwidth, overlap, fm, t)    
% Espectrograma -- Usando FFT
%   Uso
%    E = Espectrograma(x, Wwidth, overlap, fm, t)    
%   Entadas
%       - x       señal sobre la cual hacer el espectrograma
%       - Wwidth  cantidad de elementos por ventana o vector de ventana
%       donde el ancho de ventana sera la cantidad de elementos de Wwidth
%       - overlap solapamiento de las ventanas
%       - fm      frequencia de muestreo(opcional)
%       - t       vector de tiempos(opcional)
%   Salidas
%       - E la matriz de espectrograma E[a,t]

    if( length(Wwidth) > 1 )
        Window = Wwidth;
        Wwidth = length(Wwidth);
    end

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
    
    aux = exist('Window');
    %Si no paso una venatna por parametro la calculo
    if( exist('Window') ~= 1 )%si es 1 es una variable... sino es 2 un nombre reservado
        Window = hamming(Wwidth)';
    end
    E = zeros(Wwidth,Wcount);
    for wi= 1:Wcount
        
        ini = (wi-1)*step+1;
        fin = ini+Wwidth -1;
        
        %Por definicion de espectrograma:
        % E = | STFT |.^2
        
        %aux = length(x(ini:fin));
        %aux = length(norm( fft( x(ini:fin)*Window ) ).^2);
        
        E(:,wi) = abs( fft( x(ini:fin).*Window ) ).^2;
        
    end
    %figure(3);
    %stem(E(:,1));
    
    %Ploteo
    %figure(1);
    %imagesc(,,E);
    
    colormap(jet);
    
    %imagesc([t(1):dt:t(end)],[0:fm:fm/2],20*log10(max(abs(E),Emin)/Emin));
    %imagesc([t(1):dt:t(end)],[0:fm/(2*length(x)):fm/2],E);
    
    %Esta linea grafica solo la parte positiva de la transformada de Fourier
    imagesc([t(1):dt:t(end)],[0:fm/(2*length(x)):fm/2],E([1:Wwidth/2],:));
    colorbar
    axis('xy')
    
    %Leyendas
    xlabel('Tiempo [s]');
    ylabel('Frequencia [Hz]');
    title('Espectrograma');
    
    %Comparacion
    %figure(2);
    %spectrogram(x,Window,overlap);
    
   
    
    %figure(4);
    %plot(x);

end