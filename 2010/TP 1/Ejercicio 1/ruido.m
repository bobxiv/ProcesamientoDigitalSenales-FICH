function x = ruido(t)
	x = [];
	for i = 1:length(t)
		x(i) = rand;
	endfor
	plot (t, x)
endfunction
