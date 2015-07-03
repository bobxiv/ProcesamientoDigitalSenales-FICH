function [] = Ejercicio3( )
    %Ejercicio 3 de STFT y Onditas
    
    %Señal es un seno con frecuancia variable linealmente con pendiente 1
    t  = [0:1/1000:1-1/1000];
    fm = 1/(t(2)-t(1));%quiero una fm de 1000 para tener fm/2=500
    
    %Grafico de las exponenciales de 26 HZ y 40 HZ
    n  = [0:1000-1];
    exp1  = exp(1i*2*pi*(1/length(n))*n*200);

    exp2  = exp(1i*2*pi*(1/length(n))*n*400);
    
    figure(1);
    subplot(2,1,1);
    plot3(real(exp1), imag(exp1),n);
    xlabel('real');
    ylabel('imag');
    zlabel('n');
    title('Exponencial frec 200');
    subplot(2,1,2);
    plot3(real(exp2), imag(exp2),n);
    xlabel('real');
    ylabel('imag');
    zlabel('n');
    title('Exponencial frec 400');
    
    %grafico de las ventanas de Gabor
    
    g1 = Gabor(500);%largo 26 centrada en i=17
    g1 = [ g1, zeros(1,500) ];% en espacio global por decirlo de alguna manera
    
    g2 = Gabor(400);%largo 40 centrada en i=50
    g2 = [ zeros(1,600), g2 ];% en espacio global por decirlo de alguna manera
    
    figure(2);
    subplot(3,1,1);
    plot(n,g1);
    xlabel('t');
    xlabel('g');
    title('Ventana de Gabor 1');
    subplot(3,1,2);
    plot(n,g2);
    xlabel('t');
    xlabel('g');
    title('Ventana de Gabor 2');
    subplot(3,1,3);
    plot(n,g1+g2);
    xlabel('t');
    xlabel('g');
    title('Ventanas sumadas para comparar');
    
    %Calculo de atomos
    atomo1 = g1.*exp1;
    
    atomo2 = g2.*exp2;
    
    figure(3);
    subplot(3,1,1);
    plot3(real(atomo1), imag(atomo1),n);
    xlabel('real');
    ylabel('imag');
    zlabel('n');
    title('Atomo de Gabor 1');
    subplot(3,1,2);
    plot3(real(atomo2), imag(atomo2),n);
    xlabel('real');
    ylabel('imag');
    zlabel('n');
    title('Atomo de Gabor 2');
    subplot(3,1,3);
    atomoTot = atomo1 + atomo2;
    plot3(real(atomoTot), imag(atomoTot),n);
    xlabel('real');
    ylabel('imag');
    zlabel('n');
    title('Suma de los atomos de Gabor');
    
    %Analisis usando Wigner–Ville
    figure(4);
    WV = wignerdist(atomoTot);
    title('Wigner–Ville')
    
    %Analisis usando Wigner–Ville
    figure(5)
    subplot(2,1,1);
    title('Choi-Williams')
    CW = cohendist(atomoTot,128);
    subplot(2,1,2);
    CW = cohendist(atomoTot,8);
    
    %Analisis usando Espectrograma
    figure(6);
    w = max(ceil(length(atomoTot)/16),1);
    %spectrogram(atomoTot,w,ceil(w/2));
    %STFT = spectrogram(atomoTot,w,ceil(w/2),'STFT');
    STFT = Espectrograma(atomoTot,w,floor(w/2))  
    title('STFT');
    
    figure(7)
    plot(real(atomoTot));
    hold on;
    plot(imag(atomoTot),'-r');
    ylabel('real(atomos)');
    xlabel('n');
    title('Atomos de Gabor')
    legend('parte real','parte imaginario')
    hold off;
    
    %figure(79)
    %niveles = 6;
    %subplot(5,1,1);
    %[a,d]=todd(atomoTot,ondita('Symlets',6),niveles);
    %escalogramad(a,d,length(atomoTot),niveles)
    %title('Transformada Discreta Diadica, onditas Symlets 6');
    
    %figure(7);
    %WV = wignerdist(atomo2)
    %title('Wigner–Ville del atomo 2')
    
    %figure(8)
    %CW = cohendist(atomo2,)
    %title('Choi-Williams del atomo 2')
    
    %figure(9);
    %w = floor(length(atomoTot)/6);
    %STFT = spectrogram(atomo2,w,floor(w/2),'STFT del atomo 2')

end