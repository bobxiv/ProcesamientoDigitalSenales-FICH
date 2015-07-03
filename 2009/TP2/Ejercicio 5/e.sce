function z=e(y,x,alfa)
n=length(alfa);
m=length(y);
aux1=0;
aux2=0;
for j=1:m
  for i=1:n
    aux1=aux1+alfa(i)*x(i,j);
  end
  aux2=aux2+(y(j)-aux1)^2;
  aux1=0;
end
z=aux2;
endfunction
