function Z=zigzag(n)
	Z=zeros(n,n);
	d=1;nr=0;
	i=1;j=1;
	for d=1:2*n-1
		if mod(d,2)==0
			while(i<=n&&j>0)
				Z(i,j)=nr;
				i++;j--;
				nr++;
			endwhile
			j++;
			if(i>n)
				j++;i--;
			endif
		endif
		if mod(d,2)
			while(i>0&&j<=n)
				Z(i,j)=nr;
				i--;j++;
				nr++;
			endwhile
			i++;
			if(j>n)
				i++;j--;
			endif
		endif
	endfor
endfunction
