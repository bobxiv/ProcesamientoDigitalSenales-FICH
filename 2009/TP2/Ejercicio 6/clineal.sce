function x=clineal(t, frecs, amps, fases)
x=zeros(t);
for k=1:length(frecs)
  x=x+amps(k)*sin(2*%pi*frecs(k)*t+fases(k));
end
endfunction

function p=parecido(t, frecs, amps, fases, x)
p=zeros(frecs);
for i=1:length(frecs)
  p(i)=x*(amps(i)*sin(2*%pi*frecs(i)*t+fases(i)))';
end
endfunction
