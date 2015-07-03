//Ejercicio 7
function y=ComSen(t,f1,f2)//genera la suma de los 2 senos
	y=sin(2*%pi*f1*t)+sin(2*%pi*f2*t)
endfunction

function[Yn]=muestrea(F,t0,t1,Fm)//muestrea la funcion F, en el intercalo [t0,t1], con frecuancia 
  Tm=1/Fm
  Yn=F(t0:Tm:t1-Tm)
endfunction

function[V1]=compara(n1,t)//hace productos internos para intervalos de casi 0.1 seg
	c=1
	for i=1:1102:length(t)-1102
		V1(c)=n1*t(i:length(n1)+i-1)
		c=c+1
	end
endfunction

function[V]=compV(M)//sacamos maximo por intervalo de la matriz con todos los nros nxnros 
	for i=1:89
	  V(i)=find(abs(M(:,i))==max(abs(M(:,i))),1);
	end//for i
endfunction

function[p]=prom(te)//promedia por intervalos de 1102 muestras el valor absoluto de la señal original
	c=1
	a=0
	f=1;
	for i=1:length(te)
		a=a+abs(te(i))
		if(c==1102)	
			p(f)=a/1102;
			c=0;
			f=f+1
			a=0
		end
		c=c+1
	end
endfunction

//CONCLUSION: el numero discado es el:2428364
