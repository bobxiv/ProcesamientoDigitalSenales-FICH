function S2=Ejercicio5

    t2=-5:1/40.0:5;
    t=-5:1/10.0:5;
    
    S= sin(t);
    S2=zeros(1,length(t2));
    
    for i2=1:(length(t2))
        S2(i2) = Interpolation(S,t,t2(i2));
    end
end

function res=I(t)
    %sync
    %     if( t == 0 )
    %         res = 1;
    %     else
    %         res = sin(pi*t)/(t*pi);
    %     end

    %lineal
    if( abs(t)<1)
        res = 1-abs(t);
    else
        res = 0;
    end
end

%tarea
function y2=Ejercicio52
    x=[0:0.1:5];
    y=x.^2;
    
    x2=[0:0.01:5];
    y2 =zeros(1,length(x2));
    for i=1:length(x2)

        %y2(i)= Interpolation(y,x,x2(i));
    end

end
        
function res=Interpolation(x,tx,t)
    
    T = 1/10.0;
    %T = (tx(2)-tx(1));
       
    tot = 0;
    for i=1:length(x)
        aux = (t-tx(i))/T;
        tot = tot + x(i)*I( aux );
    end
    res = tot;

end
    