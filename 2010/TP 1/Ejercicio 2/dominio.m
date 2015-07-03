function x = dominio(a, t)
	if a > 1
		disp("Compresión\n");
	elseif a > 0 && a < 1
		disp("Expansión\n");
	elseif a == -1
		disp("Reversión\n");
	else
		disp("a inválido\n");
		return
	endif
		
	x = sin(a*t);
	
endfunction
