t=0:0.01:1-0.01;

//señales generadas
a=sin(2*%pi*2*t);
b=squarewave(2*2*%pi*t);
c=sin(2*%pi*4*t);

//Inciso 1
//Verificar ortogonalidad: producto interno
a*b'
//>0 => iguales?
a*c'
//<0 => opuestas
b*c'
//<0 => opuestas

//Inciso 2
tf1=abs(fft(a));
tfa=[tf1((length(t)/2)+1:length(t)),tf1(1:length(t)/2)];
tf1=abs(fft(b));
tfb=[tf1((length(t)/2)+1:length(t)),tf1(1:length(t)/2)];
tf1=abs(fft(c));
tfc=[tf1((length(t)/2)+1:length(t)),tf1(1:length(t)/2)];
//plot(-(length(t)/2):(length(t)/2)-1,tfa)
//verificar ortogonalidad
tfa*tfb'
// ans  =    6370.3884
tfa*tfc'
// ans  =    8.050D-13
tfb*tfc'
// ans  =    1.532D-12
              
//Inciso 3
c=sin(2*%pi*3.5*t);
a*c'
// ans  =  - 6.488D-15
tf1=abs(fft(c));
tfc=[tf1((length(t)/2)+1:length(t)),tf1(1:length(t)/2)];
tfa*tfc'
// ans  =    1346.7345
