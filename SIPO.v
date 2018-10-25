module SIPO (
			input 			din, 			//serial data in
			input 			clk, 			//clock signal
			input 			reset, 		//fills register with one's
			output [10:0]	dout, 		//parallel data out
			output [3:0] 	num			//counter for the number of shifts
			);

///////Internal registers/////////
reg [10:0] data_out;
reg [10:0]s;
reg [3:0] count = 0;

always @ (negedge clk)
	if (reset == 0) 
		begin
			s <= 11'b111_1111_1111;
			count <= 0;
		end
	else
		begin
			s[10] <= din;
			s[9] <= s[10];
			s[8] <= s[9];
			s[7] <= s[8];
			s[6] <= s[7];
			s[5] <= s[6];
			s[4] <= s[5];
			s[3] <= s[4];
			s[2] <= s[3];
			s[1] <= s[2];
			s[0] <= s[1];
			///we count the number of times the register shifts until a full new code is in the register
			if (count < 11)
				count <= count + 1;
			else 
				count = 0;
		end

assign dout = s;
assign num = count;

endmodule