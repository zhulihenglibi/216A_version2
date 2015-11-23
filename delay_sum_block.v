`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:23 11/09/2015 
// Design Name: 
// Module Name:    delay_sum_block 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module delay_sum_block(
	input [31:0] x_i_porty,
	input sum_en,
	input sum_rst,
	input srdyi_i,
	input GlobalReset,
	input clk,
	input output_ready,
	input [2:0] coeff_sel,
	input Global_srdyi,
	input [31:0] mean_i,
	input [31:0] std_i,
	input [4:0] count_global,
	input [31:0] adc_smc,
	input [31:0] adc_effective,
	output reg clk_stop,
	output reg [31:0] z_o_portx,
	output reg delay_o,
	output reg [31:0] mult_1,
	output reg [31:0] adc_final
    );
    


reg [31:0] input_reg;
reg [31:0] delay_reg;
reg  counter;

always @(posedge Global_srdyi)
begin
  z_o_portx <= 0;
  clk_stop <=0;
end



always@(posedge clk)
begin
		if(GlobalReset==0)
		begin
		    if(output_ready)
		    begin
		      delay_o <=0;
		      z_o_portx <= x_i_porty;
		      counter <= 0;
		    end
		    
			else if(sum_en==1 && sum_rst==0)
				begin
				    case(count_global)
				      5'd1:
				      begin
				          mult_1 <= mean_i;
				          delay_o <= 1;
				      end
				      5'd2:
				      begin
				          delay_o <= 0;				        
				      end
				      5'd3:
				      begin
				          mult_1 <= adc_smc;
				          delay_o <=1;
				      end
				      5'd4:
				      begin
				          delay_o <= 0;
				      end
				      5'd20:
				      begin
				          adc_final <= x_i_porty;
				          mult_1    <= x_i_porty;
				          delay_o   <= 1;
				        
				      end
				      5'd21:
				      begin
				          delay_o <= 0;
				          clk_stop   <= 1;
				      end
				    
				    default:
				    begin
						if(srdyi_i == 1 && counter ==0 && count_global >5'd22)
						 begin
						    counter <= counter +1;
						    delay_o <= 1;
						    z_o_portx  <= x_i_porty;
						    mult_1    <= x_i_porty;
				     
						 end 
						 else if (counter == 1)
						 begin
						    counter    <= 0;
						    delay_o    <= 0;					    
						 end
					  end
					 
					 endcase
				end
				else
				begin
				
						delay_reg <= 1;
						delay_o	 <=  0;
						counter  <=    0;
				end
		end
		else if(GlobalReset==1)
		begin
		   z_o_portx <= 0;
			 delay_reg <= 0;
			 input_reg <= 0;
			 delay_o	  <= 0; 
			 counter   <= 0;
			 mult_1    <= 0;
			 adc_final <= 0;
			 clk_stop  <= 0;
		end
end




	
endmodule