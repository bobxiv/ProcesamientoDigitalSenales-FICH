function [ y_noise ] = Ejercicio9( file, fileOut )
%Suma a un wav de entrada un ruido generado
%Ademas guarda el ruido generado en un archivo aparte de nombre NOISE
% file    Es el nombre del archivo al cual sumarle el ruido
% fileOut Es el nombre del archivo a crear con la suma del PCM de file
%         y del noise generado
%
%Devuelve la señal ensuciada con el ruido
%
%Importante: Los wav se leen y escriben en una carpeta WAV

    [y,F] = wavread( strcat('WAV\',file), 'double' );

    noise = zeros(length(y),1);
    for i= 1:length(y)
        point = rand()*999999;
        frequency = rand()*999999;
        noise(i) = sin( frequency*point );%da un ruido MUY FUERTE
    end
    
    y_noise = sum([y';noise']);
   
    wavwrite(y_noise,F, strcat('WAV\',fileOut) );
    wavwrite(noise,F,'WAV\NOISE');

end