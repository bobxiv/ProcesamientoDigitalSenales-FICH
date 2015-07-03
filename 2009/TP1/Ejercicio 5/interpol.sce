function y=interpol(x,T,t,fun)
//x es el vector con los valores discretos
//T es el período de frecuencia de la señal contenida en x
//t es el vector con los valores discretos de la nueva frecuencia
//fun es una función interpolación
n=length(t);
m=length(x);
y=zeros(1,n);
for i=1:n
  for j=1:m
     y(i)=y(i)+x(j)*fun((t(i)-(j-1)*T)/T);
  end
end
endfunction
