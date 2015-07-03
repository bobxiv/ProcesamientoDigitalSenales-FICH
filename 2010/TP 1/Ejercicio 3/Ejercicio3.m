function x = ej3(f)
	t = [0:1/f:1];
	x = sin(2*pi*5*t);
	stem (t, x)
endfunction
