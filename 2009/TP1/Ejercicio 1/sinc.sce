function x=sinc(t)   
n=length(t);         
//x=zeros(1,n);        
for k=1:n            
if t(k)<>0           
 x(k)=sin(%pi*t(k))/(%pi*t(k));
else                 
 x(k)=1;
end
end
endfunction
t=[-4:0.1:4];
