function z=ej6(x) //x es la señal de entrada, z es la salida
k=length(x);
y=zeros(1,k+2);
for i=3:k+2
  y(i)=x(i-2)+0.5*y(i-1)-0.25*y(i-2);
end
z=y(k+2);
endfunction

x=[1 2 3 2 2 1];
