function x = morse_encode(c)
	M=morse();
	x=blanks(0);
	v={M};%vector care retine nodurile in care nu s-a cautat si la dreapta
	n=v; %vector care retine calea
	while length(v) 
		if(strcmp(M{1},c)==1||strcmp(char(M{1}+32),c)==1) return;
		endif
		while length(M{2})
			M=M{2};
			v=[v {M}];
			x=[x "."];
			n=[n {M}];
			if(strcmp(M{1},c)==1||strcmp(char(M{1}+32),c)==1) return;
			endif
		endwhile
		while length(v{length(v)}{3})==0 
			v(length(v))=[];
			x(length(x))=[];
			n(length(n))=[];
			if(!length(v)) break;%ies dintr-o bucla a algoritmului
			endif
			while strcmp(n{length(n)}{1},v{length(v)}{1})!=1
                        	x(length(x))=[];
				n(length(n))=[];
			endwhile
		endwhile
		if !length(v) break;%ies din algoritm
		endif
		M=v{length(v)}{3};
		v(length(v))=[];
		v=[v {M}];
		x=[x "-"];
		n=[n {M}];
	endwhile
	x="*";
endfunction		
