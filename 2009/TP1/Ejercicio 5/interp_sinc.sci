function y=interp_sinc(t)
if t==0
  y=1;
else
  y=sin(%pi*t)/(%pi*t);
end
endfunction
