module latch_D_ck (input D, 
						input ck, 
						output Q);

assign Q = (ck==1) ? D : Q;
	
endmodule