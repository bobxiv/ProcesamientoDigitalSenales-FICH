function x=Armonica(fm, t0, tf, A, f, phi)
%La funcion crea una senal con varias frecuencias... si bien el normbre es armonica tambien se pueden crear 
%senales no armonicas. Usa las amplitudes, frecuencias y fases que se pasan en los vectores A, f y phi respectivamente.
%Parametros:
%		- fm  la frecuencia de muestreo deseada
%		- t0  el tiempo inicial para crearla(la incluye)
%		- tf  el tiempo final para crearla(la incluye)
%		- A   el vector con las amplitudes correspondientes a cada frecuencia
%		- f   el vector con las frecuencias de las sinusoidales que se quieren incluir
%		- phi el vector con las fases a usar en las sinusoidales
%Salidas:
%		- x la senal de salida
t = [t0:1/fm:tf];
x = zeros(1,length(t));
unos = ones(1,length(t));

for i=1:length(f)
	x = x + A(i)*sin(2*pi*f(i)*t+phi(i)*unos);
end