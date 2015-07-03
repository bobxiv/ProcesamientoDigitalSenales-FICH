function z = ej5(graficarSuperficieDeErrores, GraficarErroresVsNCoeficientes)
	%Aproximación de una función con las funciones de Legendre

	%Función y(t) definida en el intervalo [-1:1]
	% y(t)	=  -1 t<0
	%		=   1 t>=0

	t=-1:0.001:1;
	y = ones(length(t));
	for i=1:length(t)
		if t(i) < 0
			y(i) = -1;
        end
    end

	%5-a: con los coeficientes de ejemplo
	
	%x: vector con las funciones de Legendre (las primeras 4)
	x=zeros(9,length(t));
	x(1,:)= 1/sqrt(2);
	x(2,:)= sqrt(3/2)*t;
	x(3,:)= sqrt(5/2) * ( (3/2)*(t.^2) - (1/2) );
	x(4,:)= sqrt(7/2) * ( (5/2)*(t.^3) - (3/2)*t );

	%alfa: vector con los alfas de la aproximación
	alfa = zeros(1,4);
	alfa(2) = sqrt(3/2);
	alfa(4) = -sqrt(7/32);

	disp('Error Cuadratico Total con coeficientes de ejemplo:');
    ErrorVsCoef = [];
	z = ect(y,x,alfa)
	
    ErrorVsCoef = [ErrorVsCoef z];
	
	%5-b: variando los coeficientes
    %Grafica en (x,y) la variacion de los coeficientes 2 y 3
    %respectivamente y en z los errores cuadraticos que genera estas
    %variaciones

    if( graficarSuperficieDeErrores )
        deltas= 0:(max(alfa)*0.5)/50:max(alfa)*0.5;
        [X,Y] = meshgrid(deltas,deltas);%idem meshgrid(deltas)

        Z=zeros(length(deltas),length(deltas));
        for i=1:length(deltas)
            for j=1:length(deltas)
                Z(i,j) = ect(y,x,alfa+[0,X(i,j),0,Y(i,j)]);
            end
        end

        %graficar los errores cuadraticos que genera
        surf(X,Y,Z);
    end
	
	
	%5-c: con más coeficientes
	x(5,:) = sqrt(11/2) * ( (1/8)*(63*(t.^5) - 70*(t.^3) + 15*t) );
	x(6,:) = sqrt(13/2) * ( (1/16)*(231*(t.^6) - 315*(t.^4) + 105*(t.^2) - 5) );
	x(7,:) = sqrt(15/2) * ( (1/16)*(429*(t.^7) - 693*(t.^5) + 315*(t.^3) - 35*t) );
	x(8,:) = sqrt(17/2) * ( (1/128)*(6435*(t.^8) - 12012*(t.^6) + 6930*(t.^4) - 1260*(t.^2) + 35) );
	x(9,:) = sqrt(19/2) * ( (1/128)*(12155*(t.^9) - 25740*(t.^7) + 18018*(t.^5) - 4620*(t.^3) + 315*t) );
	
    %los alfa calculadas sus expresiones algebraicas con integrador de matematica
    
	alfa5 = sqrt(11/2)/8;
	alfa = [alfa alfa5];
	disp('Error Cuadratico Total con 5 coeficientes:');
	z = ect(y,x,alfa)
    ErrorVsCoef = [ErrorVsCoef z];
	alfa6 = 0;
	alfa = [alfa alfa6];
	disp('Error Cuadratico Total con 6 coeficientes:');
	z = ect(y,x,alfa)
    ErrorVsCoef = [ErrorVsCoef z];
	alfa7 = -(5*sqrt(15/2))/64;
	alfa = [alfa alfa7];
	disp('Error Cuadratico Total con 7 coeficientes:');
	z = ect(y,x,alfa)
    ErrorVsCoef = [ErrorVsCoef z];
	alfa8 = 0;
	alfa = [alfa alfa8];
	disp('Error Cuadratico Total con 8 coeficientes:');
	z = ect(y,x,alfa)
    ErrorVsCoef = [ErrorVsCoef z];
	alfa9 = (7*sqrt(19/2))/128;
	alfa = [alfa alfa9];
	disp('Error Cuadratico Total con 9 coeficientes:');
	z = ect(y,x,alfa)
    ErrorVsCoef = [ErrorVsCoef z];
    
    %exportando datos para Juan
    %save('x','x','-ascii');
    %save('alfa','alfa','-ascii');
    
    if( GraficarErroresVsNCoeficientes )
        %graficar el ErrorCuadratico vs Cantidad de Coeficientes
        plot(4:9,ErrorVsCoef);
        ylabel('Error Cuadratico');
        xlabel('Cantidad de Coeficientes');
    end
	
end


%Error Cuadrático Total:
%ect: recibe como parámetros la señal original y,
%las funciones de Legendre en x, y los alfas en alfa.
%Devuelve el ECT de la aproximación
function z = ect(y,x,alfa)
	n=length(alfa);
	m=length(y);
	aux1=0;
	aux2=0;
	for j=1:m
	  for i=1:n%Aproximacion en el tiempo j
		aux1=aux1+alfa(i)*x(i,j); %cada i es cada funcion por coeficiente de aproximacion
	  end
	  aux2=aux2+(y(j)-aux1)^2;
	  aux1=0;
	end
	z=aux2;
end
