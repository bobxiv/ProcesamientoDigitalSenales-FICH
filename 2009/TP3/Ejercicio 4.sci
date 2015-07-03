
//Verifiación de la propiedad de retardo temporal de la T de Fourier

t=0:1/100:1-1/100;
x=zeros(1,length(t)*2);  
x(1:100)=squarewave(2*%pi*4*t);

