%Ejercicio1

%Senal
f_1 = 10;
f_2 = 20;
dt = 0.001;
t = [0:dt:1];
s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t);
N = length(s);
fm = N;%porque la senal dura 1 segundo

%Punto 1
printf("\nPunto 1:\n");
printf("--------\n");

printf("Frecuencias: 10\n");
printf("             20\n");
printf("\nSenal: s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t)\n");
printf("\nN  = %i", N);
printf("\ndt = %f", dt);
printf("\nfm = %f", fm);

S = fft(s);

%Centrar la senal
if floor(N/2) == N/2
	S = shift(S,N/2);%Si es par
	else
	S = shift(S,floor(N/2));%si es impar
end

%Creamos el vector de las frecuencias
df = fm/N;
printf("\ndf = %f", df);
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

Smag = abs(S);

%El problema es que la senal tiene 1000 elementos y crear con mi
%algoritmo una matriz de 1000x1000 necesita mucho tiempo y memoria
%[f,S,Smag,Sang] = FourierT(s,fm);
%stem(f,Smag);

figure(1);
stem(f,Smag);
title("Punto 1");
xlabel("f")
ylabel("Smag")

%Punto 2
printf("\nPunto 2:\n");
printf("--------\n");

E_s = dot(s,s);
E_S = dot(Smag,Smag);

printf("\n<s,s> = (1/N) <Smag,Smag>\n");
printf("%f = (1/%i) %f\n",E_s,N,E_S);
printf("%f = %f\n",E_s,(1/N)*E_S);

if abs( E_s - (1/N)*E_S ) < eps
	printf("\nLa identidad de Parseval se verifica\n");
	else
	printf("\nLa identidad de Parseval NO se verifica\n");
end

%Punto 2.1
printf("\nPunto 2.1:\n");
printf("----------\n");

s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4;
printf("\nSenal: s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4\n");

S = fft(s);

%Centrar la senal
if floor(N/2) == N/2
	S = shift(S,N/2);%Si es par
	else
	S = shift(S,floor(N/2));%si es impar
end

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

Smag = abs(S);

figure(2);
stem(f,Smag);
title("Punto 2.1");
xlabel("f")
ylabel("Smag")

%Punto 2.2
printf("\nPunto 2.2:\n");
printf("----------\n");

f_2 = 11;
s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4;
printf("Frecuencias: 11\n");
printf("             20\n");
printf("\nSenal: s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4\n");

S = fft(s);

%Centrar la senal
if floor(N/2) == N/2
	S = shift(S,N/2);%Si es par
	else
	S = shift(S,floor(N/2));%si es impar
end

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

Smag = abs(S);

figure(3);
stem(f,Smag);
title("Punto 2.2");
xlabel("f")
ylabel("Smag")

%Punto 2.3
printf("\nPunto 2.3:\n");
printf("----------\n");

f_2 = 10.5;
s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4;
printf("Frecuencias: 10.5\n");
printf("             20\n");
printf("\nSenal: s = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4\n");

S = fft(s);

%Centrar la senal
if floor(N/2) == N/2
	S = shift(S,N/2);%Si es par
	else
	S = shift(S,floor(N/2));%si es impar
end

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

Smag = abs(S);

figure(4);
stem(f,Smag);
title("Punto 2.3");
xlabel("f")
ylabel("Smag")

printf("\nPodemos ver que la frecuencia se confunde entre la 10 y la 11 principalmente.\nPero tambien piensa que son otras frecuencias cercanas a esas dos.\nEntonces un cambio evidente es que la energia de la frecuencia 11 crece mucho.")

%Punto 2.4
printf("\nPunto 2.4:\n");
printf("----------\n");

printf("Ahora tomamos: [0:0.001:0.72]\n");
printf("Es decir que tendremos un N menor y una fm igual.\n");
printf("Esto producira que nuestro espectro de frecuencias sea mas grueso.\n");
printf("Esto se debe a que: df * dt= 1/N  ->  df = 1/(dt*N)  y si N es mas chico luego\ndf es mas grande\n");

printf("El delta de frecuencias de antes era: df = %f\n",df);

t = [0:dt:0.72];
s2 = sin(2*pi*f_1*t) + 4*sin(2*pi*f_2*t) + 4;
N = length(s2);

S2 = fft(s2);

%Centrar la senal
if floor(N/2) == N/2
	S2 = shift(S2,N/2);%Si es par
	else
	S2 = shift(S2,floor(N/2));%si es impar
end

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

printf("El delta de frecuencias de ahora es: df = %f\n",df);

Smag2 = abs(S2);

%Creamos el vector de las frecuencias
df = fm/N;
if floor(N/2) == N/2
	f = [-fm/2+df:df:fm/2];%si es par
	else
	f = [-floor(fm/2):df:floor(fm/2)];%si es impar
end

figure(5);
stem(f,Smag2);
title("Punto 2.4");
xlabel("f")
ylabel("Smag")