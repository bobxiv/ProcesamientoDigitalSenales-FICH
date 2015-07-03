function x=triang(t,pe,s)
n=length(t);
u=t/pe;
x=ones(1,n);
s=s/2;
for k=1:n
dist=u(k)-floor(u(k));
  if(dist)<s,
    x(k)=dist/s;
  elseif(dist)>s,
    if(dist)<1-s,
      x(k)=(1-2*dist)/(1-2*s);
    elseif(dist)>1-s
      x(k)=(dist-1)/s;
    else
      x(k)=-1;
    end
  else
    x(k)=1;
end
end
endfunction
