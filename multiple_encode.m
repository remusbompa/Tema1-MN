function x = multiple_encode(str)
	x=blanks(0);
	ls=length(str);
	while ls
		x=[morse_encode(str(ls)) ' ' x];
		ls--;
	endwhile
	if length(x) x(length(x))=[]; endif %dispare spatiul de la sfarsit
endfunction
