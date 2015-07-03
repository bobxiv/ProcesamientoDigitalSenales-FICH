
//Inciso 1
t=0:0.001:1-0.001;
s=sin(2*%pi*10*t)+4*sin(2*%pi*20*t);
tf1=abs(fft(s));
tf=[tf1(501:1000), tf1(1:500)];
plot(-500:499,tf)

//Inciso 2
//Comprobación de que la señal en los diferentes dominios tiene la misma energía:
round(energia(s))==(energia(tf)/length(t))
// ans  =
//  T

//Inciso 3
s=sin(2*%pi*10*t)+4*sin(2*%pi*20*t)+4;
tf1=abs(fft(s));
tf=[tf1(501:1000), tf1(1:500)];
plot(-500:499,tf)
//aparece en el gráfico de espectro una componente que indica un desplazamiento de cuantas unidades sobre el eje y

//Inciso 4
s=sin(2*%pi*10*t)+4*sin(2*%pi*11*t);
tf1=abs(fft(s));
tf=[tf1(501:1000), tf1(1:500)];
plot(-500:499,tf)
//Observación: se modifica la cúspide en 10 f, llegando al máximo en 11, pero deformándose ya que las frecuencias //de ambos senos son muy cercanas. Parece una señal de 10 Hz.

//Inciso 5
s=sin(2*%pi*10*t)+4*sin(2*%pi*10.5*t);
tf1=abs(fft(s));
tf=[tf1(501:1000), tf1(1:500)];
plot(-500:499,tf)
//Observación: el espectro se deforma.  

//Inciso 6
t=0:0.001:0.72-0.001;
s=sin(2*%pi*10*t)+4*sin(2*%pi*20*t);
tf1=abs(fft(s)); 
tf=[tf1((length(t)/2)+1:length(t)), tf1(1:length(t)/2)];
plot(-(length(t)/2):(length(t)/2)-1,tf) 




