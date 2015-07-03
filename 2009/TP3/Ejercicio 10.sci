
//Filtrado de ruido en la banda 40 a 180 Hz

m=fscanfMat("H:\Muestreo y Procesamiento Digital\Señales para los ejercicios\GTP 3 Fourier\necg.txt");
t=0:1/360:length(m)/360-1/360;
tf1=abs(fft(m));
tf=[ tf1((length(m)/2)+1:length(m)); tf1(1:length(m)/2)];
f=-180:360/1024:180-360/1024;
esp=ones(f);
esp(abs(f)>=40)=0;
filtrada=tf.*esp';
//plot(f,filtrada)
inversa=ifft(filtrada);
//plot(t,abs(inversa))


