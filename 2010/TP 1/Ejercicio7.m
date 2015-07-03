function [ es_ergodica ] = Ejercicio7( largo )
%Entra un largo, y prueba generando 2 muestreos de señales con
%distribucion normal(ok supuestamente aleatorias), y ver si son 
%estacionarios y ergodicos
% largo  La longitud del vector de ruido
%
%Devuelve si las señales son ergodicas(es decir tambien estacionarias)

    %realizacion 1
    noiseGauss1 = zeros(largo,1);
    for i= 1:largo
        point = randn()*999999;
        frequency = randn()*999999;
        noiseGauss1(i) = sin( frequency*point );%da un ruido MUY FUERTE
    end
    
    %realizacion 2
    noiseGauss2 = zeros(largo,1);
    for i= 1:largo
        point = randn()*999999;
        frequency = randn()*999999;
        noiseGauss2(i) = sin( frequency*point );%da un ruido MUY FUERTE
    end
    
    %solo si largo => oo seran las medias iguales, pero ambas tienden a lo
    %mismo, probar con largos de millon o billon
    diff = abs(median(noiseGauss1) - median(noiseGauss2));
    if diff < 0.1
        diff = abs( std(noiseGauss1) -  std(noiseGauss2));
        if( diff < 0.1 )
            %OK suficiente
            es_ergodica = true;
        else
            es_ergodica = false;
        end
    else
        es_ergodica = false;
    end

end

