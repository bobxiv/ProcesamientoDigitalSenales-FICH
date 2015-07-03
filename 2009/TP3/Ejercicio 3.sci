
//Por teorema de Nyquist, la señal puede poseer hasta una frecuencia de 5 Hz
//ya que la frecuencia de muestreo es de 10 Hz.

//La propiedad se verifica se verifica cuando k pertenece a Z
//w=2*%pi*k/N

t=0:1/10:1-1/10;
N=length(t);
k=5; //f=5/10=0.5
x=sin(2*%pi*(k/N)*t);
// periódica
k=7.5; //f=7.5/10=0.75
y=sin(2*%pi*(k/N)*t);
// no periódica

//Inciso 1
x1=x+x;
y1=y+y;

//Inciso 2
t=0:1/10:2-1/10;
N=length(t);
k=5; //f=5/20=
x2=sin(2*%pi*(k/N)*t);
k=7.5; //f=7.5/20=
y2=sin(2*%pi*(k/N)*t);
plot2d3(t,x2)
//periódica
plot2d3(t,y2) 
//no periódica




