function x = dominio(a, t)
	if a > 1
		disp("Compresi�n\n");
	elseif a > 0 && a < 1
		disp("Expansi�n\n");
	elseif a == -1
		disp("Reversi�n\n");
	else
		disp("a inv�lido\n");
		return
	endif
		
	x = sin(a*t);
	
endfunction
