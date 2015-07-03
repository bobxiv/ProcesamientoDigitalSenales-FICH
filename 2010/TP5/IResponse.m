function [ h ] = IResponse( y , OutStart, OutEnd)

    index =1;
    h = zeros(0,OutEnd-OutStart);
    for i= OutStart:OutEnd
        h(index) = y( DeltaDirak(i) );
        index = index+1;
    end

end

