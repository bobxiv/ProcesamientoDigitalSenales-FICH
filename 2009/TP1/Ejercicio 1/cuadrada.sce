function x=cuadrada(t)
n=length(t);

for k=1:n
 if (senoidal(1,1,0,t(k))>0)
   x(k)=1; end
 if (senoidal(1,1,0,t(k))==0)
   x(k)=0; end
 if (senoidal(1,1,0,t(k))<0)
   x(k)=-1;end
  
end
endfunction

//function x=cuadrada(t,pe,ct)
//n=length(t);
//u=t/pe;
//x=ones(1,n);
//for k=1:n
// if(u(k)-floor(u(k)))>=ct
//  x(k)=-1;
// end
//end
//endfunction
