%Con a=2
%Dirac centrado en 1
%Escalon centrado en 1

function y = Ejercicio6()

    
    w = LinearConvolutionHandles(@x,@ha,19);

    y = LinearConvolutionHandles(w,@hb,19);

end

function res = x(index)
    res = Dirac(index)-2*Dirac(index-1);
end

function res = Dirac(index)
    if index == 1
        res = 1;
    else
        res = 0;
    end
end

function res = ha(n)
    res = sin(8*n);
end

function res = hb(n)
    res = (2^n)*u(n);
end

function res = u(index)
    if index < 1
        res = 0;
    else
        res = 1;
    end
end