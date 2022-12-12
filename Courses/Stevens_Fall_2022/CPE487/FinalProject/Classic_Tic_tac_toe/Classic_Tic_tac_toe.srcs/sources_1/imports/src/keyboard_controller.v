`timescale 1ns / 1ps

module keyboard_controller(
	input i_clk,	  //board clock
    input i_ps2_clk,  //keyboard clock and data signals
    input i_ps2_data,
	output reg [7:0] o_key_code
   );

	reg reading_bits_from_keyboard;	   // keeps the value 1 while waiting to receive more bits 
	reg [11:0] reading_state_timeout;  // tracks how much time passed since it received the previous key code
	reg previous_state;		           // checks the previous state of the keyboard clock signal to know if it changed
	reg error;			               // checks if an error was received in the packet
	reg [10:0] received_bit;           // stores the 11 received bits
	reg [3:0]  received_bits_count;    // tracks how many bits were received until now (from 0 to 11) used for timeout
	reg received_bits_full;	           // this is triggered when full 11 bits are received used 
	reg [10:0] last_key_code;          // stores the previously receiver key code
	
	parameter [7:0] RELEASED = 8'hF0;  // break code sent by keyboard when key is released

    reg keyboard_clock = 0;	   // generates a clock that runs 250 times slower than the board clock
	reg [7:0] counter = 0;
	
	always @(posedge i_clk) 
	    begin				
		if (counter < 249) 
		begin			
			counter <= counter + 1;
			keyboard_clock <= 0;
		end
		else 
		begin
			counter <= 0;
			keyboard_clock <= 1;
		end
	end
	
	always @(posedge i_clk) 
	begin	
		if (keyboard_clock) 
		begin
			if (reading_bits_from_keyboard)
				reading_state_timeout <= reading_state_timeout + 1;	
			else 						
				reading_state_timeout <= 0;  // resets the data if 11 bits haven't been received reading_state_timeout >= 4000
		end
	end


	always @(posedge i_clk) 
	begin		
	if (keyboard_clock) 
	begin						
		if (i_ps2_clk != previous_state) 
		begin	                            
			if (!i_ps2_clk) // checks if the keyboard clock is at falling edge
			begin				
				reading_bits_from_keyboard <= 1;				
				error <= 0;				
				received_bit[10:0] <= {i_ps2_data, received_bit[10:1]};  // add up the data received by shifting bits and adding one new bit
				received_bits_count <= received_bits_count + 1;			
			end
		end
		else if (received_bits_count == 11) 
		begin
			received_bits_count <= 0;
			reading_bits_from_keyboard <= 0;
			received_bits_full <= 1;
			//calculate error using parity bit
			if (!received_bit[10] || received_bit[0] || !(received_bit[1]^received_bit[2]^received_bit[3]^received_bit[4]
				^received_bit[5]^received_bit[6]^received_bit[7]^received_bit[8]^received_bit[9]))
				error <= 1;
			else 
				error <= 0;
		end	
		else  
		begin  // resets the data if 11 bits haven't been received reading_state_timeout >= 4000
			received_bits_full <= 0;					
			if (received_bits_count < 11 && reading_state_timeout >= 4000) 
			begin
				received_bits_count <= 0;
				reading_bits_from_keyboard <= 0;
			end
		end
	previous_state <= i_ps2_clk; // marks down the previous state of the keyboard clock
	end
	end


	always @(posedge i_clk) 
	begin
		if (keyboard_clock) 
		begin					
			if (received_bits_full) 
			begin				// if a full packet of 11 bits was received
				if (error) 
				begin
					o_key_code <= 8'd0;		
				end
				else 
				begin
				    if (last_key_code != RELEASED) 
				    begin
					o_key_code <= received_bit[8:1];	
					last_key_code<= received_bit[8:1];
					end
					else 
					begin
					last_key_code <= 8'd0;
					end
				end				
			end					
			else o_key_code <= 8'd0;				// not a full packet received
		end
		else o_key_code <= 8'd0;
	end
	
endmodule