function y=medio(x)
n=length(x);
aux=0;
for k=1:n
  aux=aux+x(k);
  end
y=aux/n;
endfunction
