function [f,X,Xmag,Xang]=FourierT(x,fm)
%Realiza la transformacion de Fourier de la senal x, usando la frecuencia
%de muestreo fm(se la usa para dar la correlacion de cada valor con su frecuencia)
%Parametros:
%		- x  la senal a transformar
%		- fm frecuencia de muestro de x
%Salidas:
%		- f    vector con las frecuencias de la transformada... es decir que es el dominio de la transformada
%		- X    la senla x transformada, es un vector de complejos en general
%		- Xmag el vector de magnitudes de X
%		- Xang el vector de angulos de X
%Nota: el algoritmo ya devuelve X centrado, osea shifteado...(puede haber un error ahi :S)
N = length(x);
F = zeros(N,N);

%Crear la matriz de transformacion
%Notar que en realidad es una matriz de transicion ya
%que especificamente la operacion de transformada de Fourier
%es un cambio de base. Es decir:
%
%		X[k] = Sum_n( x[n] * Phi(n,k) )
%			Donde:
%					x[n] = Sum_k( X[k]*Phi(n,k) ) Omitimos la normalizacion
%
%	Representamos como:
%		X = F * x donde F es la matriz de transicion(cambio de base)
%
%				Osea la base vieja es: {s_0, s_1,...,s_N-1} = Base S
%					Donde s_0 = (1 0 0 ... 0)
%						  s_1 = (0 1 0 ... 0)
%						  etc
%				La base nueva es:      {Phi(n,0),Phi(n,1),...,Phi(n,N-1)} = Base Phi
%					Entonces la matriz de cambio de base se define como:
%					F = ( [s_0]Phi [s_1]Phi ... [s_N-1]Phi ) Donde [s_i]Phi significa 
%																coordenadas de vector s_i en la base Phi
%					[s_i]Phi = (a_0 a_1 ... a_n)
%					s_0 = a_0 * Phi(n,0) + a_1 * Phi(n,1) +...+ a_N-1 * Phi(n,N-1)
%					s_0 * Phi(n,i) = a_j * Phi(n,i) * Phi(n,i) Por ortogonalidad de la base
%					a_i = (s_0 * Phi(n,i))/(Phi(n,i) * Phi(n,i))
%					Como de s_0 solo el elemento 0 es 1 y el resto 0 luego
%					a_i = Phi(0,i)/(Phi(n,i) * Phi(n,i))
%							  |
%							   -> Elemento 0 del vector
% Osea que queda:
%					F = ( Phi(0,0)   Phi(1,0)   ... Phi(N-1,0)   )
%						( Phi(0,1)   Phi(1,1)   ... Phi(N-1,1)   )
%						(	...		   ...      ...              )
%						( Phi(0,N-1) Phi(1,N-1) ... Phi(N-1,N-1) )
% Ose ya que usamos vectores columna luego es la transpuesta que lo que seria si 
%fuese solo una transformacion comun, pero es un cambio de base osea transformacion
%sobre las coordenadas y por eso la matriz tiene esta composicion en este caso
%
for n=1:N
	for k=1:N
		F(k,n) = exp(-i * (2*pi/N) * k * n);
	end
end

%Transformamos usando la matriz
[h,w] = size(x);
if w > h
	X = F * x';
	else
	X = F * x;
end

%Centrar la senal
if floor(N/2) == N/2
	X = shift(X,N/2);
	else
	X = shift(X,ceil(N/2));
end

%Magnitud de la senal de analisis
Xmag = zeros(1,N);
for i=1:N
	Xmag(i) = norm(X(i));
end

%Angulo de la senal de analisis
Xang = zeros(1,N);
for i=1:N
	Xang(i) = atan( imag(X(i))/real(X(i)) );
end

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];
	else
	f = [-floor(fm/2):df:floor(fm/2)];
end