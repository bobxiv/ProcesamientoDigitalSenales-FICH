function [] = Ejercicio1( )
    %Graficos comparativos del Ejercicio 1 de STFT y Onditas
    
    %Señal es un seno con frecuancia variable linealmente con pendiente 1
    t  = [0:1/60:1-1/60];
    fm = 1/(t(2)-t(1));%quiero una fm de 14 para tener fm/2=7
    m  = 30;
    x  = sin(2*pi*1/2*m*t.^2);
    

    %Buena resolucion temporal
    %           dt = T_ventana = 10
    %           df = 1/T_ventana = 0.1
    figure(1);
    E = Espectrograma(x, 6, 3, t,fm);
    title('Buena resolucion temporal')
    
    %Buena resolucion temporal
    %           dt = T_ventana = 256
    %           df = 1/T_ventana = 0.0039
    figure(2);
    E = Espectrograma(x, 30, 15, t,fm);
    title('Buena resolucion frecuencial')
    
    %Buen compromiso tiempo-frequencia
    %           dt = T_ventana = 90
    %           df = 1/T_ventana = 0.0111
    figure(3);
    E = Espectrograma(x, 10, 5, t,fm);
    title('Buen compromiso tiempo-frequencia')

end

