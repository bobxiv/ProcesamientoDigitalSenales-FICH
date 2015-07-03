function z = ej6

	t = -4:0.001:4;
	%amps = ones(1,10); %amplitudes 1, se puede probar con varias
	amps = 2:12;
	fases = zeros(1, 10); %sin fase
	senos = generarsenos(t, amps, fases);
	%coeficientes = ones(1, 10);
	coeficientes = rand(1, 10)*10; %si uso coeficientes así, cambia la cosa...
	x = clineal(t, senos, coeficientes);
	p = parecido(t, x, senos);
	bar(p);

	%variando las fases
	fases = rand(1, 10);
	senos = generarsenos(t, amps, fases);
	x = clineal(t, senos, coeficientes);
	p = parecido(t, x, senos);
	bar(p);

	
	%cuadrada:
	

endfunction



function x = generarsenos(t, amps, fases)

	x = zeros(10, length(t));
	for i=1:10
		x(i,:) = amps(i)*sin(2*pi*i*t + fases(i));
	endfor
endfunction


function x = clineal(t, senos, coef)
	x=zeros(1, length(t));
	for k=1:length(coef)
	  aux = coef(k) * senos(k,:);
	  x = x + aux;
	end
endfunction

function p=parecido(t, x, senos)
	p = zeros(1, 10);
	for i=1:10
		p(i) = dot(x, senos(i,:));
	end
endfunction 

