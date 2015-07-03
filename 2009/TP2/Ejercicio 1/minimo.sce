function y=minimo(x)
n=length(x);
y=x(1);
for k=2:n
  if x(k)<y
    y=x(k);
    end
  end
endfunction
