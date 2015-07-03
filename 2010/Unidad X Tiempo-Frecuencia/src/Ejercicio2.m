function [] = Ejercicio2( )
    %Ejercicio 2 de STFT y Onditas
    
    %Se�al es un seno con frecuancia variable linealmente con pendiente 1
    t  = [0:1/400:1-1/400];
    fm = 1/(t(2)-t(1));%quiero una fm de 14 para tener fm/2=7
    m  = 100;
    x  = sin(2*pi*(1/2*m*t.^2+100*t));
    
    %Graficamos la se�al
    figure(1);
    plot(t,x);
    xlabel('t');
    xlabel('x');
    title('Se�al x');

    %Buen compromiso tiempo-frequencia
    %           dt = T_ventana = 40
    %           df = 1/T_ventana = 0.025
    figure(2);
    E = Espectrograma(x, 40, 20, t,fm);
    title('Buen compromiso tiempo-frequencia')

end