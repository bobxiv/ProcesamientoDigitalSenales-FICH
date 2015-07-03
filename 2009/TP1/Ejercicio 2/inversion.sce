function x=inversion(t)
//a factor de a*t... para inversion a=-1
a=-1;
n=length(t);
for k=1:n
 x(k)=sin(2*%pi*t(k)*a);
end
endfunction
t=[-4:0.1:4];
