function [x]=invFourierT(X)
%Realiza la transformacion inversa de Fourier de la senal X
%Parametros:
%		- X  la senal a en frecuencias
%Salidas:
%		- x la senal original
%Nota: El algoritmo supone que la transformada fue shifteada y se creo con el algoritmo de FourierT.
%Ademas supone que la senal original era real... es decir x era real.
N = length(X);
invF = zeros(N,N);

%Arreglamos la senal X que suponemos se creo con el algoritmo de FourierT y por eso fue shifteada
if floor(N/2) == N/2
	X = shift(X,N/2);
	else
	X = shift(X,floor(N/2));
end

%Crear la matriz de transformacion inversa
for n=1:N
	for k=1:N
		invF(k,n) = exp(i * (2*pi/N) * k * n);
	end
end

%Transformamos usando la matriz
[h,w] = size(X);
if w > h
	x = (1/N) * invF * X';
	else
	x = (1/N) * invF * X;
end

%La parte imaginaria esta pero es practicamente cero... la parte real tiene la senal si la senal era real en un comienzo
x = real(x);