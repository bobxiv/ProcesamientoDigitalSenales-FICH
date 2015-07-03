// y(t)=  1 t<0
//       -1 t>=0

t=-1:0.001:1;
y=ones(t);
y(t<0)=-1;

x=zeros(4,length(t));

x(1,:)=1/sqrt(2);
x(2,:)=sqrt(3/2)*t;
x(3,:)=sqrt(5/2)*(3*(t^2)/2-1/2);
x(4,:)=sqrt(7/2)*(5*(t^3)/2-3*t/2);

alfa=zeros(1,4);
alfa(2)=sqrt(3/2);
alfa(4)=-sqrt(7/32);

e(y,x,alfa)  
