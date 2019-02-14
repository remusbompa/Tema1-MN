function x = multiple_decode(sir)
	inceput=1;sfarsit=1;
	x=blanks(0);
	while(sfarsit<=length(sir))
		while(sfarsit<=length(sir) && strcmp(sir(sfarsit),' ')!=1)
			sfarsit++;
		endwhile
		x=[x morse_decode(sir(inceput:sfarsit-1))];
		sfarsit++;
		inceput=sfarsit;
	endwhile
endfunction
