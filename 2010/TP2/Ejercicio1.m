function Ejercicio1(y)

    disp('Resultados:')

    Media = Media(y)
    
    Maximo = Maximo(y)
    
    Minimo = Minimo(y)
    
    Amplitud = Amplitud(y)
    
    Energia = Energia(y)
    
    Accion = Accion(y)
    
    PotenciaMedia = PotenciaMedia(y)

    RMS = RMS(y)

end


function res=Media(y)
    
    res = sum(y) / length(y);
    
end


function res=Maximo(y)
    
    res = y(1);
    for i= 2:length(y)
        if y(i) > res
            res = y(i);
        end
    end
    
end

function res=Minimo(y)
    
    res = y(1);
    for i= 2:length(y)
        if y(i) < res
            res = y(i);
        end
    end

end

function res=Amplitud(y)
    
    if abs( Maximo(y) ) > abs( Minimo(y) ) 
        res = abs( Maximo(y) );
    else
        res = abs( Minimo(y) );
    end

end

function res= Energia(y)
    
    res = 0;
    for i= 1:length(y)
        res = res + y(i)^2;
    end

end

function res=Accion(y)
    
    res = 0;
    for i= 1:length(y)
        res = res + abs(y(i));
    end

end

function res=PotenciaMedia(y)
    
    res = Energia(y) / length(y);

end

function res=ErrorCuadraticoMedio(y1,y2)
    
    res = sum( [y1;-y2] );
    
    res = res.^2;
    
    res = sum(res');

end

function res=RMS(y)
    
    res = PotenciaMedia(y) ^ (1.0/2);

end