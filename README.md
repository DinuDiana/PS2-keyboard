# PS2-keyboard
Keyboard interface for the Altera DE1 FPGA Board - Verilog

This module translates the signals sent by a keyboard in data a user can use for different projects while using the FPGA board.

module ps2 (input clock_key, 		//clock signal of the keyboard
	input data_key,			      //input data from keyboard
	input clock_fpga, 		    //clock signal of fpga board – 50MHz
	input reset,			        //fills the shift register (SIPO) with 1’s
	output [7:0] data_out,		//data output from keyboard
output new_code);	          //indicates that the data received from the keyboard is good 
                            //after the integrity of the signal is checked
