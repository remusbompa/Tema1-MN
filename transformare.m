function t=transformare(a)
	i=1;t=zeros(0);
	while a
		t=[mod(a,10) t];
		a=floor(a/10);
		i++;
	endwhile
endfunction
