function e=evaluate(M,depth)
	if gameOver(M) e=10+depth;
	endif
	if depth==0 e=0;
	endif
endfunction
