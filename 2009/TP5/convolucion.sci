function y=convolucion(x,z)
nx=length(x);
nz=length(z);
c=zeros(nx,2*nz-1);
indice=0;
for i=1:nx
  for j=1:nz
    c(i,indice+j)=x(i)*z(j);
  end
  indice=indice+1;
end
for i=1:2*nz-1
  y(i)=mean(c(:,i))*length(c(:,i));
end
y=y';
endfunction
