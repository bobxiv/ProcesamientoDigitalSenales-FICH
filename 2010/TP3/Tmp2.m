t= [0:1/100:1-1/100];
x= sin(2*pi*1*t);

[f,X,Xmag,Xang] = FourierT(x,100);

x2 = invFourierT(X);

%La parte compleja da aproximadamente 0
for i=1:length(x2)
	x2(i) = real(x2(i));
end

plot(x2);