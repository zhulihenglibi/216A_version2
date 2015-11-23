module multiplier_output_reg(
   input srdyi,
   input clk,
   input GlobalReset,
   input [4:0] count_global, 
   input [31:0]  coeff_i,
   input [31:0]  mult_i, 
   input [31:0] add_prev,
   output reg [31:0] add1_o, 
   output reg [31:0] add2_o,
   output reg [31:0] tmp_store,
   output reg srdyo
  );

reg counter;

always @(posedge clk)
begin
  if(GlobalReset == 1)
  begin
    add1_o <=0;
    add2_o <=0;
    tmp_store <=0;
    srdyo  <=0;
    counter <=0;
  end
  else if(GlobalReset == 0)
  begin 
    case(count_global)
      5'd8:
      begin
        tmp_store <= mult_i; 
      end
      5'd10:
      begin
        add1_o <= mult_i;
        add2_o <= add_prev;
        srdyo  <=1;
      end
 /*     5'd12:
      begin
        srdyo <=0;  
      end  */   
      default:
      begin
        if(srdyi == 1 && counter ==0)
        begin
          counter <= counter +1;
          add1_o <=mult_i;  
          add2_o <=coeff_i;
          srdyo <=1;
        end
        else if(counter == 1)
        begin       
          counter <=0;
        end 
      end
    endcase
  end
end

always @(posedge clk)
begin
  if(srdyo == 1)
  begin
    srdyo <= 0;
  end
end

endmodule