module ps2 (
				///////////////////KEYBOARD PINS////////////////////
				input clock_key, 			//clock signal of the keyboard
				input data_key,			//input data from keyboard
				///////////////////FPGA PINS////////////////////////
				input clock_fpga, 		//clock signal of fpga board – 50MHz
				input reset,				//fills the shift register (SIPO) with 1’s
				output led,					//data output from keyboard
				output [7:0] data_out,	//data output from keyboard
				output new_code			//indicates that the data received from the keyboard is good 
													//after the integrity of the signal is checked
				);
				
				
wire clock_interm;		//intermadiary clock signal = keyboard clock synchronized with fpga clock
wire [10: 0] dout;
wire out_xnor, out_and, ok;
wire data_in;
wire [3:0] count;

latch_D_ck lceas(clock_key, clock_fpga, clock_interm);
latch_D_ck ldate(data_key, clock_fpga, data_in);
	
SIPO register(data_in, clock_interm, reset ,dout, count);
xnor exclusive(out_xnor, dout[8], dout[7], dout[6], dout[5], dout[4], dout[3], dout[2], dout[1]);
and si(out_and, out_xnor, dout[9], ok);
verificare ver (clock_fpga, dout, ok, count);
latch_D_ck out(out_and, clock_fpga, new_code);

assign data_out = dout[8:1];
assign led = (new_code == 1) ? 1 : 0;

endmodule