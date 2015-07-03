function [ y3 ] = Ejercicio8( file1, file2 , fileOut )
%Suma 2 archivos wav en otro wav. Requiere que file1 y file2 tengan la
%misma frequencia
% file1   Es el nombre del primer archivo wav
% file2   Es el nombre del segundo archivo wav
% fileOut Es el nombre del archivo a crear con la suma del PCM de file1 y
%         file2
%
%Devuelve la señal con la suma de file1 y file2
%
%Importante: Los wav se leen y escriben en una carpeta WAV

    [y1,F1] = wavread( strcat('WAV\',file1), 'double' );%los datos estan normalizados
    [y2,F2] = wavread( strcat('WAV\',file2), 'double' );

    if F1 ~= F2 
        error('Los dos archivos no tienen la misma frecuencia');
    end
    
    if length(y1) > length(y2)
        minSize = length(y2);
    else
        minSize = length(y1);
    end
    
    y3 = zeros(1,minSize);
    for i=1:minSize
        y3(i) = y1(i) + y2(i);
    end
    
    wavwrite(y3,F1, strcat('WAV\',fileOut) );

end

