%Ejercicio 3

s = zeros(3,128);

s(1,:) = rand(1,128);

s(2,:) = rand(1,128);

%s(3,:) = rand(1,128);
t = [0:1/127:1];
s(3,:) = 10*sin(2*pi*1*t);

S = zeros(3,128);
S(1,:) = abs(fft(s(1,:)));

S(2,:) = abs(fft(s(2,:)));

S(3,:) = abs(fft(s(3,:)));

%Expresamos la magnitud del espacio en frecuencias en decibeles
S = 20.*log10(S);

%Recorremos las 3 senales y calculamos cuantos elementos tienen por encima de los 3db
%... estos son los que nosotros consideramos asi que esos son los que formaran el ancho de banda
ancho = zeros(3,1);
for j=1:3

	for i=1:128
		if S(j,i) > 3
			ancho(j,1) = ancho(j,1) +1;
		end
	end

	figure(j)
	plot(ones(length(S(j,:))),'r');
	hold on;
	stem(S(j,:));

end

[dummy,i]=sort(ancho(:,1));

s_ordenado = zeros(3,128);
s_ordenado(1,:) = s(i(1),:);
s_ordenado(2,:) = s(i(2),:);
s_ordenado(3,:) = s(i(3),:);