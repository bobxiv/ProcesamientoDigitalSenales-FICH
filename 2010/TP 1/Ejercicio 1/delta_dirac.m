function x = delta_dirac(t)
	tt = length(t);
	x = zeros(1, tt);
	for i = 1:tt
		if t(i) == 0
			x(i) = 1;
			return
		endif
	end
	stem(t, x);
endfunction
