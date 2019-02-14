function r=baza(sursa,b1,b2)
	b10=0;
	for i=1:length(sursa)	
		if sursa(i)>='0' && sursa(i)<='9'
			b10=adunare(inmultire(b10,b1),transformare(sursa(i)-'0'));
		endif
		if sursa(i)>='a' && sursa(i)<='z'
			b10=adunare(inmultire(b10,b1),transformare(sursa(i)-'a'+10));
		endif
	endfor
	r=blanks(0);
	while b10(1)
		[b10 m]=impartire(b10,b2);
		if(m>=10)
			m='a'+m-10;
		else m='0'+m;
		endif
		m=char(m);
		r=[m,r];
	endwhile
endfunction
