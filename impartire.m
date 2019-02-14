function [cat rest]=impartire(d,imp)
	rest=0;
	for i=1:length(d)
		rest=rest*10+d(i);
		cat(i)=floor(rest/imp);
		rest=mod(rest,imp);
	endfor
	while cat(1)==0 && length(cat)>1 
		cat=cat(2:length(cat));
	endwhile
endfunction
		
		
