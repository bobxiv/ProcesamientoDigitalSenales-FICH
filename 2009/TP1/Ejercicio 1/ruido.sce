function x=ruido(t)
n=length(t);
for k=1:n
 x(k)=rand();
end
endfunction
t=[-4:0.1:4];
