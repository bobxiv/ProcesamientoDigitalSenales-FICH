%Calcula la respuesta al escalon unitario de y
%Primero calcula la respuesta al impulso unitario,
%luego usa la relacion de s[n] = sumk0-N( h[k] )
%Osea la suma de las respuestas de h son la respuesta al escalon
%s[n]
function [ s ] = Ejercicio2( )

    %my arbitrary input
    x = [1 2 1 -1 2 4 6 7 1 9];
    
    %the system output
    y=[];
    for i=1:length(x)
       y=[ y YSystem(i,x) ];
    end
    
    dirac = zeros(1,length(y));
    dirac( round(length(y)/2) ) = 1;
    
    h = LinearConvolution(y,dirac);    
    
    s = zeros(1, length(h));
    %Usa esta relacion, ya contada
    for n=1:length(h)
        for k=1:n
            s(n) = s(n) + h(k);
        end
    end
    
    %en fin sabemos que s[i]-s[i-1] osea el delta s[n]
    %es igual a h[n] !!!!
    %Recordar

end

%The specific system in finite differences
function [ res ]= YSystem(index,x)

    if index == 1 || index == 2
        res = 0;
    else 
        res = 1/6*( x(index)-2*x(index-1)+x(index-2)-5*YSystem(index-2,x)+4*YSystem(index-1,x) );
    end

end