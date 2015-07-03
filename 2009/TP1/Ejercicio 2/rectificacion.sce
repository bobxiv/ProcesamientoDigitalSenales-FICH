function x=rectificacion(t)
//p(x)=|x|
n=length(t);
for k=1:n
 x(k)=abs(sin(2*%pi*t(k)));
end
endfunction
t=[-4:0.01:4];
