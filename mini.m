function [minim Minim]=mini(M,depth,c,o)
        if gameOver(M) || depth==0 minim=evaluate(M,depth); Minim=M;return; endif
	Minim=[' ' ' ' ' ';' ' ' ' ' ';' ' ' ' ' '];
        minim=inf;
        nr=1;
        for i=1:3
                for j=1:3
                        if strcmp(M(i,j),' ')==1
                                A(:,:,nr)=M;
                                A(i,j,nr)=o;nr++;
                        endif
                endfor
        endfor
        for i=1:depth
                [score Maxim]=maxi(A(:,:,i),depth-1,c,o);
                if(score<minim)
                        minim=score;
			Minim=A(:,:,i);
                endif
		if(score==-depth-10)
			break;
		endif
        endfor
endfunction

