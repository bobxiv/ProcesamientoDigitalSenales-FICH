function [] = Ejercicio4( N )
    %Ejercicio 4 de STFT y Onditas

    %Señal es un seno con frecuancia variable linealmente desde 0 hasta
    %8*fm
    t  = [0:1/N:1-1/N];
    fm = 1/(t(2)-t(1));%quiero una fm de 14 para tener fm/2=7
    m  = 8*fm;
    x  = sin(2*pi*1/2*m*t.^2);

    %w=floor(N/8);%lleno de aliasing
    %w=floor(N/16);%el primero entra sin aliasing
    w=floor(N/20);%lindo se ve como crece las frecuencias y una vez que psan fm/2
    %empiezan a aparecer frecuencias "fantasmas" del aliasing
    figure(1);
    E = Espectrograma(x, w, floor(w/2), fm, t);

end

