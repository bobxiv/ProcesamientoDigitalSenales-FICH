function x = triangular(t,periodo)
	a = periodo/2;
	x = abs( 2*(t/a - floor(t/a + 1/2)) );
	plot (t, x)
endfunction
