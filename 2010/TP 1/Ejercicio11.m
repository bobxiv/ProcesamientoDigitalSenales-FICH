function [ ymod ] = Ejercicio11( file, fileOut, k )
%Lee 1 señal y hace una operacion de rango, multiplicando toda muestra por
%un escalar k
% file    Es el nombre del archivo con la señal
% fileOut Es el nombre del archivo que se guardara despues de la operacion
% k       El escalar para la multiplicacion
%
%Devuelve la señal luego de la operacion de rango
%
%Importante: Los wav se leen y escriben en una carpeta WAV

    [y,F] = wavread( strcat('WAV\',file), 'double' );
    
    ymod = zeros(length(y),1);
    for i=1:length(y)
       ymod(i) = y(i)*k;
    end
    
    wavwrite(ymod,F, strcat('WAV\',fileOut) );
    
end