
t=-4:0.001:4;
frecs=1:10;
amps=1:10;
fases=zeros(frecs);
x=clineal(t, frecs, amps, fases);
p=parecido(t, frecs, amps, fases, x);
bar(p)

fases=rand(frecs);
x=clineal(t, frecs, amps, fases);
p=parecido(t, frecs, amps, fases, x);
bar(p)

x=squarewave(5.5*2*%pi*t);
p=parecido(t, frecs, amps, fases, x);
bar(p)
