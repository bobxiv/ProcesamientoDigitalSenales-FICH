function x=dirac(t)
n=length(t);
x=zeros(1,n);
for k=1:n
 if t(k)==0
  x(k)=1;
 end
end
endfunction

