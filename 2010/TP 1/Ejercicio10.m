function [ SNR , SNRdb, y_noise0db, y_noise100db] = Ejercicio10( fileSignal, fileNoise, file0DB, file100DB )
%Lee 2 señales, una de señal y la otra de ruido, luego calcula su 
%SNR en decibeles. Luego ensucia la señalcon un ruido de 0db y 100db
%Ademas guarda en NOISE0db y en NOISE100db los ruidos para una señal con
%0db de SNRdb y 100db de SNRdb respectivamente
% fileSignal Es el nombre del archivo con la señal
% fileNoise  Es el nombre del archivo con el ruido
% file0DB    Es el nombre del archivo de señal ensuciado con 0db
% file100DB  Es el nombre del archivo de señal ensuciado con 100db
%
%Devuelve SNR, SNRdb, la señal ensuciada con 0db y 
%                         la señal ensuciada con 100db
%
%Importante: Los wav se leen y escriben en una carpeta WAV

    [y,F1] = wavread( strcat('WAV\',fileSignal), 'double' );
    [noise,F2] = wavread( strcat('WAV\',fileNoise), 'double' );

    if( F1 ~= F2 )
        error('Los dos archivos no tienen la misma frecuencia');
    end
    
    %si es que P=sumatoria(aplitudes)^2
    As = 0;
    An = 0;
    for i= 1:length(y)
        As = As + abs(y(i));
        An = An + abs(noise(i));
    end
    SNR = (As / An)^2;
    
    SNRdb = 10*log10(SNR);
    
    %AnNueva = As / sqrt( 10^(SNRdb/10) );
    %cuanta potencia de ruido nesesitamos para tener esos decibeles de
    %SNRdb
    An0db   = As / sqrt( 10^(0/10) );
    An100db = As / sqrt( 10^(100/10) );
    
    %barajamos la cantidad de ruido An0db en un vector de ruido
    noise0db= zeros(length(noise),1);
    while An0db ~= 0 
        index = 1+round(rand()*(length(noise0db)-1));
        quita = rand()*2-1;
        if abs(quita) > An0db 
            quita = An0db;
        end
        noise0db(index)= noise0db(index) + quita;
        An0db = An0db - abs(quita);
    end
    
    %barajamos la cantidad de ruido An100db en un vector de ruido
    noise100db= zeros(length(noise),1);
    while An100db ~= 0 
        index = 1+round(rand()*(length(noise100db)-1));
        quita = rand()*2-1;
        if abs(quita) > An0db 
            quita = An100db;
        end
        noise100db(index)= noise100db(index) + quita;
        An100db = An100db - abs(quita);
    end
    
    %sumar el ruido con la señal para producir SNRdb de 0db y de 100db
    y_noise0db   = sum([y';noise0db']);
    y_noise100db = sum([y';noise100db']);
    
    %grabar los archivos de resultado
    wavwrite(noise100db  ,F1, 'WAV\NOISE100db' );
    wavwrite(noise0db  ,F1, 'WAV\NOISE0db' );
    wavwrite(y_noise0db  ,F1, strcat('WAV\',file0DB)   );
    wavwrite(y_noise100db,F1, strcat('WAV\',file100DB) );
    
end