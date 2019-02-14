function [maxim Maxim]=maxi(M,depth,c,o)
	if gameOver(M) || depth==0 maxim=-evaluate(M,depth); Maxim=M; return; endif
	Maxim=[' ' ' ' ' ';' ' ' ' ' ';' ' ' ' ' '];
	maxim=-inf;
	nr=1;
        for i=1:3
                for j=1:3
                        if strcmp(M(i,j),' ')==1
                                A(:,:,nr)=M;
                                A(i,j,nr)=c;nr++;
                        endif
                endfor
        endfor
        for i=1:depth
                [score Minim]=mini(A(:,:,i),depth-1,c,o);
                if(score>maxim)
                        maxim=score;
			Maxim=A(:,:,i);
                endif
		if(score==depth+10)
                        break;
                endif
        endfor
endfunction
	
