module delay_sync_final(
    input [31:0] sync_i,
    input srdyi,
    input clk,
    output reg [31:0]sync_o,
    input GlobalReset, 
    output reg 
  
  
  
 reg counter;
 
 always @(posedge clk)
 begin
    if(GlobalReset == 1)
    begin
      sync_o <=0;
      counter<=0;  
    end
    else if(GlobalReset == 0)
    begin 
      if(srdyi == 1 && counter ==0)
      begin
        counter <= counter + 1;
        srdyo <=1;
      end
      else if(counter == 1)
      begin
        sync_o <= sync_i;  
        counter <= 0; 
        srdyo <=0;
      end
    end

endmodule
  
