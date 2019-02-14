function []=draw_tic_tac_toe(M)
	disp("     |     |     ");
	disp(sprintf('  %s  |  %s  |  %s  ',M(1,1),M(1,2),M(1,3)));
	disp("_____|_____|_____");
	disp("     |     |     ");
	disp(sprintf('  %s  |  %s  |  %s  ',M(2,1),M(2,2),M(2,3)));
        disp("_____|_____|_____");
	disp("     |     |     ");
	disp(sprintf('  %s  |  %s  |  %s  ',M(3,1),M(3,2),M(3,3)));
        disp("     |     |     ");
endfunction


