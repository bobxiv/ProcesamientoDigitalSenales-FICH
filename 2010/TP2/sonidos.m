function s  = sonido

    F = 8000;
    Duracion = 0.5;
 
    k= 0:1/F:Duracion;
    %numeros combinando frequencias de las filas y columnas
    numeros = zeros(12,length(k));
    
    %llenar numeros con las frequencias
    for i=1:4
        for j=1:3
            fq1=0;
            fq2=0;
            switch i
                case 1%fila1
                    fq1= 697;
                case 2%fila2
                    fq1= 770;
                case 3%fila3
                    fq1= 852;
                case 4%fila4
                    fq1= 941;
            end
            switch j
                case 1%columna1
                    fq2= 1209;
                case 2%columna2
                    fq2= 1336;
                case 3%columna3
                    fq2= 1477;
            end
            
            numeros((i-1)*3+j,:) = sin(2*pi*fq1*k) + sin(2*pi*fq2*k);
                
        end
    end
    
    %escribir la señal
    
    % 7 7 1 9 5
    
%     tespacio = 0:1/F:1
%     esp = zeros(1, length(tespacio));
%     s = [];
%     s = [s numeros(7,:)];
%     s = [s esp];
%     s = [s numeros(7,:)];
%     s = [s esp];
%     s = [s numeros(1,:)];
%     s = [s esp];
%     s = [s numeros(9,:)];
%     s = [s esp];
%     s = [s numeros(5,:)];
%     s = [s esp];
% 
%     wavwrite(s, F, 'misnumeros');

    wavwrite(numeros(1,:), F, 'Pulse1');
    wavwrite(numeros(2,:), F, 'Pulse2');
    wavwrite(numeros(3,:), F, 'Pulse3');
    
    wavwrite(numeros(4,:), F, 'Pulse4');
    wavwrite(numeros(5,:), F, 'Pulse5');
    wavwrite(numeros(6,:), F, 'Pulse6');
    
    wavwrite(numeros(7,:), F, 'Pulse7');
    wavwrite(numeros(8,:), F, 'Pulse8');
    wavwrite(numeros(9,:), F, 'Pulse9');
    
    wavwrite(numeros(10,:), F, 'PulseAsterisk');
    wavwrite(numeros(11,:), F, 'Pulse0');
    wavwrite(numeros(12,:), F, 'PulseNumeral');
end

