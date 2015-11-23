//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:07 11/15/2015 
// Design Name: 
// Module Name:    delay_sync 
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
module delay_sync(
 input [31:0] sync_i, 
 input srdyi, 
 output reg [31:0] sync_o,
 output reg srdyo,
 input GlobalReset
	);
reg [31:0] tmp;
reg [31:0] tmp_2;
always@(posedge clk)
begin
	if(GlobalReset == 0) 
	begin
	  tmp2 <= tmp;
	  sync_o <= tmp2;;
	  
	end
	else if(GlobalReset == 1)
	begin
	   tmp2 <=0;
	   tmp <=0;
	   sync_o <= 0;
	
	end
end

always @(posedge srdyi)
begin
  tmp <= sync_i;
end

endmodule


