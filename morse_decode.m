function x = morse_decode(sir)
	M=morse();
	ok=1;
	for i=1:length(sir) 
		if sir(i)=='.'
			if(strcmp(M{2},"")!=1)
				M=M{2};
			else ok=0; break;
			endif
		elseif sir(i)=='-'
			if(strcmp(M{3},"")!=1)
				M=M{3};
			else ok=0; break;
			endif
		else ok=0;break;
		endif
	endfor
	if ok
		x=M{1};	 
	else
		x="*";
	endif
endfunction
