function y=cuantizar2(t,N)
n=length(t);
x=senoidal(1,1,0,t);
H=2/N;
for k=1:n
//  if (x(k)<0)
//    y(k)=0;
//  else
    if (x(k)>=(N-1)*H)
      y(k)=(N-1)*H;
    else
      y(k)=H*int(x(k)/H);
    end
  //end
end

endfunction
