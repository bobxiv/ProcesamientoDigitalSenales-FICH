function [ real, imaginario, t ] = Ejercicio6( First, Steep, End )
%Genera una señal con componentes real, imaginaria
%y las muestrea en el periodo comprendido entre [First,End], con un paso de
%Steep
% First El comienzo del vector de timepo
% Steep El paso del vector de tiempo
% End   El final del vector de tiempo
%
%Devuelve la señal luego de aplicar el fadeout
%
%Importante: Aqui real es identidad sobre t y imaginario es cuadratico
%                                                               sobre t

    t          = First:Steep:End;
    real       = zeros(length(t),1);
    imaginario = zeros(length(t),1);
    for i=1:length(t)
       real(i)       = I(t(i));
       imaginario(i) = Cuadrat(t(i));
    end
    
    plot3(real,imaginario,t);
    
end

%identidad
function res=I(x)
    res = x;
end

%cuadratica
function res=Cuadrat(x)
    res = x^2;
end