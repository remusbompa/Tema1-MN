function c=inmultire(d,inm)
	T=0;
	for i=length(d):-1:1
		c(i)=d(i)*inm+T;
		T=floor(c(i)/10);
		c(i)=mod(c(i),10);
	endfor
	while T
		c=[mod(T,10) c];
		T=floor(T/10);
	endwhile
endfunction
