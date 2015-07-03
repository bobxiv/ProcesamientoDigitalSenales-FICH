function y=sistema(b,a,x0,y0,x)
cx=[x0,x];
y=zeros(1,length(x));
cy=[y0,y];
for k=1:length(x)
  for i=1:length(a)
    y(k)=y(k)+a(i)*cx(length(x0)+k-i+1);
  end
  for i=1:length(b)
    y(k)=y(k)-b(i)*cy(length(y0)+k-i);
  end
  cy=[y0,y];
end
endfunction
