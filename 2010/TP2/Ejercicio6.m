%No esta terminado

t = 0:0.01:1;
s = zeros(10,length(t));

A = 1;
theta = 0;

for i=1:10
	s(i,:) = A*sin(2*pi*t*i+theta);
end

a = [1.5 0.5 3 0.3 2 0.1 1 10 2 0.15]';


s_Comb = s'*a;

%scomb_mod2=s_Comb'*s_Comb;

aux = zeros(10,1);
for i=1:10
	%aux(i,1) = 1/(abs(scomb_mod2-s(i,:)*s_Comb)+.00001);%Medida loca de lucas
	aux(i,1) = (s(i,:)*s_Comb)/norm(s(i,:));
end

bar(aux);



