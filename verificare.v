module verificare(input clock_fpga, 						//fpga clock signal
						input [10:0] data_in_parallel, 		//parallel data from SIPO register
						output reg ok, 							//indicates that the data received is correct, active on 1
						input [3:0] count							//counter from SIPO register
						);

////////internal registers///////
reg sum;
wire par_check;	//parity check

always @ (clock_fpga)
		if (count < 11)
			sum = sum + data_in_parallel[count-1]; 	//calculus of parity
		else if (count == 11)
			if (data_in_parallel[0] == 1 && data_in_parallel[10] == 0 && par_check == data_in_parallel[9])
				ok = 1; //active if the start, stop and parity bits are correct
			else 
				ok = 0;
		
assign par_check = ~sum;


endmodule 
