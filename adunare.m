function c=adunare(nr,ad)
	T=0;
	if length(ad)>length(nr)
		for i=length(nr)+1:length(ad)
			nr=[0 nr];
		endfor
	else for i=length(ad)+1:length(nr)
			ad=[0 ad];
		endfor
	endif
	for i=length(nr):-1:1
		c(i)=nr(i)+ad(i)+T;
		T=floor(c(i)/10);
		c(i)=mod(c(i),10);
	endfor
	if T c=[T c]; endif
endfunction
