function [] = Ejercicio5( N )
    %Ejercicio 5 de STFT y Onditas
    
    %Un valor ideal de N es 2048 para graficar

    %Señal es un seno con frecuancia variable exponencialmente desde 0
    t  = [0:5/N:5-1/N];
    fm = 1/(t(2)-t(1));%quiero una fm de 180 para tener fm/2=90
    x  = sin(2*pi*exp(t));
    
    %           dt = T_ventana = 2
    %           df = 1/T_ventana = 0.5
    
    %la frecuencia de muestreo crece desde 1 hasta 150(aprox)
    %figure(2);
    %plot(t, exp(t));

    %Grafico del espectrograma con STFT
    w=max(ceil(N/22),14);
    figure(1);
    E = Espectrograma(x, w, ceil(w/2), fm, t);
    
    % todd.m - Calcula y grafica la transformada wavelt diadica
    %todd(
    %diadica(x,6,'sym4');
    
    %Calculo del escalograma de Wavelet Discreta Diadica
    %           Para Onditas:
    %                           - Symplets
    %                           - Haar
    %                           - Daubechies
    %                           - Coiflets
    %                           - Meyer
    figure(2)
    niveles = 7;
    %subplot(5,1,1);
    [a,d]=todd(x,ondita('Symlets',6),niveles);
    escalogramad(a,d,length(x),niveles)
    title('Transformada Discreta Diadica, onditas Symlets 6');
    figure(3)
    %subplot(5,1,2);
    [a,d]=todd(x,ondita('Haar',4),niveles);
    escalogramad(a,d,length(x),niveles)
    title('Transformada Discreta Diadica, onditas Haar');
    figure(4)
    %subplot(5,1,3);
    [a,d]=todd(x,ondita('Daubechies',6),niveles);
    escalogramad(a,d,length(x),niveles)
    title('Transformada Discreta Diadica, onditas Daubechies 6');
    figure(5)
    %subplot(5,1,4);
    [a,d]=todd(x,ondita('Coiflets',4),niveles);
    escalogramad(a,d,length(x),niveles)
    title('Transformada Discreta Diadica, onditas Coiflets 4');
    figure(6)
    %subplot(5,1,5);
    [a,d]=todd(x,ondita('Meyer',4),niveles);
    escalogramad(a,d,length(x),niveles)
    title('Transformada Discreta Diadica, onditas Meyer');

    %Calculo del escalograma de Wavelet Continua muestreada
    %           Para Onditas:
    %                           - Symplets
    %                           - Haar
    %                           - Daubechies
    %                           - Coiflets
    %                           - Meyer
    figure(7)
    %subplot(5,1,1);
    cwt(x,[1:1:150],'sym6','scal');
    title('Transformada Continua, onditas Symlets 6');
    figure(8)
    %subplot(5,1,2);
    cwt(x,[1:1:150],'haar','scal');
    title('Transformada Continua, onditas Haar');
    figure(9)
    %subplot(5,1,3);
    cwt(x,[1:1:150],'db6','scal');
    title('Transformada Continua, onditas Daubechies 6');
    figure(10)
    %subplot(5,1,4);
    cwt(x,[1:1:150],'coif4','scal');
    title('Transformada Continua, onditas Coiflets 4');
    figure(11)
    %subplot(5,1,5);
    cwt(x,[1:1:150],'meyr','scal');
    title('Transformada Continua, onditas Meyer');

    %Usando la funcion del toolkit... que solo usa Morlet
    %figure(12)
    %tocon(x,1,30,1); 

end
