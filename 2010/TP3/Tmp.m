t= [0:1/99:1];
x= sin(2*pi*1*t) + 2*sin(2*pi*4*t);

aux= 2*sin(2*pi*4*t);
dot(aux,aux);

X2 = fft(x);

X2mag = zeros(length(X2),1);
for i=1:length(X2)
	X2mag(i) = norm(X2(i));
end
