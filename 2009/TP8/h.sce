function f=h(c, p, w)
  for i=1:length(w)
    f(i)=prod(w(i)^(-1)-c)/prod(w(i)^(-1)-p);
end
endfunction
