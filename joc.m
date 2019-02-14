function[]=joc()
	scorO=0;scorC=0;maxim=0;
	q='a';
	while(strcmp(q,'q')!=1)
		o=input("Cu ce vrei sa joci?X sau 0?\n","s");
        	M=[" " " " " ";" " " " " ";" " " " " "];
        	depth=9;
		ok=0;
		if(strcmp(o,'x')==1||strcmp(o,'X')==1) 
			o='X';c='0';
			while(depth)
				while(1)
        	        		r=input("pe ce patratel [linie coloana] il marchezi?");
					if(strcmp(M(r(1),r(2)),' ')!=1)
						disp("trebuie marcat un patratel gol!");
        	        		else M(r(1),r(2))=o;break;
					endif
				endwhile
        	        	depth--;
        	        	if(gameOver(M)) scorO++;ok=1;break;endif
        	        	if(depth==0) ok=1;break;endif
        	        	draw_tic_tac_toe(M);
				if(depth==8)
					if(strcmp(M(2,2),' ')==1)
						M(2,2)=c;
					else
						M(1,1)=c;
					endif	
				else [maxim M]=maxi(M,depth,c,o);
				endif
        	        	depth--;
        	        	if(gameOver(M)) scorC++;ok=1;break;endif
        	        	if(depth==0) ok=1;break;endif
        	        	draw_tic_tac_toe(M);
        		endwhile
			if(ok==1)
				draw_tic_tac_toe(M);ok=0;
			endif
			disp(sprintf('Scorul jucator-calculator: %d-%d',scorO,scorC));
		elseif(strcmp(o,'0')==1) 
			c='X';
			while(depth)
				if(depth==9)%iau separat cazul primei mutari deoarece indiferent de acesta calculatorul(c) nu va pierde si consider ca va muta in centru de fiecare data cand incepe
					M(2,2)=c;
				else
        				[maxim M]=maxi(M,depth,c,o);
				endif
        	                depth--;
        	                if(gameOver(M)) scorC++;ok=1;break;endif
        	                if(depth==0) ok=1;break;endif
        	                draw_tic_tac_toe(M);
				while(1)
					r=input("pe ce patratel [linie coloana] il marchezi?");
        	        		if(strcmp(M(r(1),r(2)),' ')!=1)
						disp("trebuie marcat un patratel gol!")
					else M(r(1),r(2))=o; break;
					endif
				endwhile
        	        	depth--;
        	        	if(gameOver(M)) scorO++;ok=1;break;endif
        	       		if(depth==0) ok=1;break;endif
        	       		draw_tic_tac_toe(M);
        		endwhile
			if(ok==1)
				draw_tic_tac_toe(M);ok=0;
			endif
			disp(sprintf('Scorul jucator-calculator: %d-%d',scorO,scorC));
		else disp("Caracterul introdus nu este X sau 0!");ok=1;
		endif
		if(ok==1)
			q='a';%daca nu se introduce X sau 0, i se cere jucatorului sa mai introduca odata
		else q=input("Doresti sa mai joci(apasa orice caracter) sau sa parasesti programul('q')?","s");
		endif
	endwhile
endfunction
