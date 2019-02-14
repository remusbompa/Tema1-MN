function g=gameOver(M)
	g=0;
        for c=['X' '0']
                for i=1:3
                        if(strcmp(M(i,:),[c c c])==1 || strcmp(M(:,i),[c c c]')==1)
                                g=1; return;
                        endif
                endfor
                if(strcmp([M(1,1) M(2,2) M(3,3)],[c c c])==1||strcmp([M(1,3) M(2,2) M(3,1)],[c c c])==1)
                        g=1; return;
                endif
        endfor
endfunction
