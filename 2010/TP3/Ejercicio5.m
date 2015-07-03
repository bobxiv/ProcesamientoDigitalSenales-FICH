%Ejercicio 5
%Se utiliza la transformada de Fourier para interpolar una senal
%lo que se hace es transformar la senal y una vez transformada se le agregan ceros pero a los finales de la senal una vez shifteada
%luego se la destransforma y la senal destransformada es la senal con una interpolacion

%El grafico de arriba es el de la senal original y el de abajo es la interpolada

elementosOriginal    = 25
elementosInterpolada = 45

%Creo que labura mejor si la diferencia entre el numero original de muestras y la interpolada es un numero par
%entonces estoy seguro 	que si pongo l amitad de ceros de cada lado anda bien

t = [0:1/(elementosOriginal-1):1]
x = sin(2*pi*1*t);

subplot(2,2,1);
title("Senal Original")
plot(x);

X = fft(x);
X = fftshift(X);

subplot(2,2,2);
stem(abs(X));

Xexpand = zeros(1,elementosInterpolada);

for i=1:length(X)
	Xexpand(i) = X(i);
end

Xexpand = shift(Xexpand,ceil((elementosInterpolada-elementosOriginal)/2));%muevo la mitad de ceros al otro lado
subplot(2,2,4);
stem(abs(Xexpand));

Xexpand = ifftshift(Xexpand);
xexpand = ifft(Xexpand);

subplot(2,2,3);
title("Interpolacion de Fourier")
plot(real(xexpand));