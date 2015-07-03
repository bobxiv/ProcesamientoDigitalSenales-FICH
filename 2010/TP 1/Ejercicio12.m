function [ yfade ] = Ejercicio12( file, fileOut )
%Lee 1 señal y hace un fadeout lineal al final del wav
% file    Es el nombre del archivo con la señal
% fileOut Es el nombre del archivo con e fadeout aplicado
%
%Devuelve la señal luego de aplicar el fadeout
%
%Importante: Los wav se leen y escriben en una carpeta WAV

    [y,F] = wavread( strcat('WAV\',file), 'double' );
    
    yfade = zeros(length(y),1);
    for i=1:length(y)
       map = i / length(y);
       yfade(i) = y(i)*Idec(map);
    end
    
    wavwrite(yfade,F, strcat('WAV\',fileOut) );
    
end

%identidad decresciente elevada en 1
%osea funcion de fadeout
function res=Idec(x)
    res = -x+1;
end