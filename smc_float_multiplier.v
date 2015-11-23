// ********************************************************************
//
// Copyright (C) 1994-2014, Synopsys Inc.  All Rights Reserved

// This code was generated by Synopsys's Synphony Model Compiler product and
// is intended for use solely by licensed users of this product.

// VERILOG created by Synphony Model Compiler J-2014.09, Build 015R, Aug 22 2014
// Date written:             Fri Oct 23 15:32:23 2015

// ********************************************************************

// Generated from /smc_float_multiplier.slx Version 1.16 Last modified date Fri Oct 23 15:29:00 2015
module n_i (
  input clk,
  input GlobalEnable1,
  input GlobalReset,
  output [31:0] y, // ufix32_En0
  input [31:0] porty // ufix32_En0
);
wire [31:0] N_1;  
wire [31:0] N_porty_0_48;  
wire [31:0] N_y_1_49;  
wire GlobalResetSel;
assign y = N_1;
  assign N_1 = porty;
assign GlobalResetSel = GlobalReset;
endmodule

//-----------------------------------------

module z1_o (
  input clk,
  input GlobalEnable1,
  input GlobalReset,
  output [31:0] portx, // ufix32_En0
  input [31:0] x // ufix32_En0
);
wire [31:0] N_3;  
wire [31:0] N_x_0_52;  
wire [31:0] N_portx_1_53;  
wire GlobalResetSel;
assign portx = N_3;
  assign N_3 = x;
assign GlobalResetSel = GlobalReset;
endmodule

//-----------------------------------------

module FP_Multiplier (
  input clk,
  input GlobalEnable1,
  input GlobalReset,
  output srdyo, // ufix1
  output [31:0] z, // ufix32_En0
  input srdyi, // ufix1
  input [31:0] y, // ufix32_En0
  input [31:0] x // ufix32_En0
);
wire [8:0] N_57;  
wire [0:0] N_74;  
wire [6:0] N_26;  
wire [7:0] N_29;  
wire [0:0] N_30;  
wire [7:0] N_59;  
wire [7:0] N_60;  
wire [46:0] N_67;  
wire [0:0] N_23;  
wire [0:0] N_24;  
wire [22:0] N_69;  
wire [0:0] N_25;  
wire [22:0] N_72;  
wire [0:0] N_45;  
wire [7:0] N_44;  
wire [22:0] N_43;  
wire [23:0] N_20;  
wire [47:0] N_58;  
wire [48:0] N_27;  
wire [9:0] N_39;  
wire [23:0] N_21;  
wire [23:0] N_32;  
wire [23:0] N_33;  
wire [0:0] N_63;  
wire [9:0] N_11;  
wire [0:0] N_62;  
wire [0:0] N_70;  
wire [0:0] N_40;  
wire [22:0] N_73;  
wire [7:0] N_31;  
wire [0:0] N_42;  
wire [47:0] N_36;  
wire [47:0] N_66;  
wire [8:0] N_61;  
wire [47:0] N_75;  
wire [7:0] N_68;  
wire [7:0] N_71;  
wire [8:0] N_12;  
wire [0:0] N_14;  
wire [0:0] N_1;  
wire [31:0] N_3;  
wire [47:0] N_56;  
wire [47:0] N_37;  
wire [31:0] N_4;  
wire [23:0] N_28;  
wire [23:0] N_34;  
wire [23:0] N_35;  
wire [0:0] N_64;  
wire [47:0] N_19;  
wire [0:0] N_2;  
wire [31:0] N_22;  
wire [0:0] N_GlobalEnable1_SubSystem_Convert_AutoGen24_1_35;  
wire [0:0] N_38;  
wire [0:0] N_41;  
wire [0:0] N_GlobalEnable1_0_54;  
wire [31:0] N_x_0_55;  
wire [31:0] N_y_0_56;  
wire [0:0] N_srdyi_0_57;  
wire [31:0] N_z_1_58;  
wire [0:0] N_srdyo_1_59;  
wire GlobalResetSel;
assign srdyo = N_2;
assign z = N_22;
  assign N_1 = srdyi;
  assign N_4 = y;
  assign N_3 = x;
  assign N_GlobalEnable1_SubSystem_Convert_AutoGen24_1_35 = GlobalEnable1;
  generate
  begin: Add1_block
    wire enab;
    wire [9:0] tmpOut;
    wire  [9:0] tmp_N_57_0;
    wire  [9:0] tmp_N_74_1;
    wire  [9:0] tmp_N_26_2;
    wire [9:0] tmpOutPre;
    assign  enab= GlobalEnable1;
    assign tmp_N_57_0 = ($unsigned(N_57) << 0);
    assign tmp_N_74_1 = ($unsigned(N_74) << 0);
    assign tmp_N_26_2 = ($unsigned(N_26) << 0);
    assign  tmpOutPre =   tmp_N_57_0 - tmp_N_74_1 - tmp_N_26_2;
    assign tmpOut = tmpOutPre;
    assign N_11 = $signed(tmpOut) << 0;
  end // Add1_block
  endgenerate
  generate
  begin: Add2_block
    wire enab;
    wire [8:0] tmpOut;
    wire  [8:0] tmp_N_29_0;
    wire  [8:0] tmp_N_30_1;
    wire [8:0] tmpOutPre;
    assign  enab= GlobalEnable1;
    assign tmp_N_29_0 = ($unsigned(N_29) << 0);
    assign tmp_N_30_1 = ($unsigned(N_30) << 0);
    assign  tmpOutPre =   tmp_N_29_0 + tmp_N_30_1;
    assign tmpOut = tmpOutPre;
    synBusSatRnd #( .inp_width(9), .out_width(8), .infrac(0), .outfrac(0), .round(0), .sat(1), .datatype("UU") )
    sat_tmpOut ( .inp(tmpOut), .outp(N_31) );
  end // Add2_block
  endgenerate
  generate
  begin: Add5_block
    wire enab;
    wire [8:0] tmpOut;
    wire  [8:0] tmp_N_59_0;
    wire  [8:0] tmp_N_60_1;
    wire [8:0] tmpOutPre;
    assign  enab= GlobalEnable1;
    assign tmp_N_59_0 = ($unsigned(N_59) << 0);
    assign tmp_N_60_1 = ($unsigned(N_60) << 0);
    assign  tmpOutPre =   tmp_N_59_0 + tmp_N_60_1;
    assign tmpOut = tmpOutPre;
    assign N_12 = $unsigned(tmpOut) << 0;
  end // Add5_block
  endgenerate
  generate
  begin: Concat_block
    wire [47:0] med;
    assign med = { N_67, N_23 };
    assign N_19 = med[47:0];  end // Concat_block
  endgenerate
  generate
  begin: Concat1_block
    wire [23:0] med;
    assign med = { N_24, N_69 };
    assign N_20 = med[23:0];  end // Concat1_block
  endgenerate
  generate
  begin: Concat2_block
    wire [23:0] med;
    assign med = { N_25, N_72 };
    assign N_21 = med[23:0];  end // Concat2_block
  endgenerate
  generate
  begin: Concat3_block
    wire [31:0] med;
    assign med = { N_45, N_44, N_43 };
    assign N_22 = med[31:0];  end // Concat3_block
  endgenerate
assign N_23 = 1'b0;
  synBusAdapter #(
      .inp_width(24),
      .out_width(24),
      .datatype("unsign"),
      .preshift(0)
    ) Convert (
      .inp(N_20),
      .outp(N_32)
   );
  synBusAdapter #(
      .inp_width(48),
      .out_width(49),
      .datatype("unsign"),
      .preshift(0)
    ) Convert1 (
      .inp(N_58),
      .outp(N_27)
   );
  synBusAdapter #(
      .inp_width(49),
      .out_width(24),
      .datatype("unsign"),
      .preshift(-1),

      .infrac(48),
      .outfrac(23),
      .sat(1),
      .round(2),
      .saType("UU")
    ) Convert2 (
      .inp(N_27),
      .outp(N_28)
   );
  synBusAdapter #(
      .inp_width(10),
      .out_width(8),
      .datatype("signed"),
      .preshift(0),

      .infrac(0),
      .outfrac(0),
      .sat(1),
      .round(0),
      .saType("SU")
    ) Convert3 (
      .inp(N_39),
      .outp(N_29)
   );
  synBusAdapter #(
      .inp_width(24),
      .out_width(24),
      .datatype("unsign"),
      .preshift(0)
    ) Convert4 (
      .inp(N_21),
      .outp(N_33)
   );
    synDelayWithEnable #( .bitwidth(24), .preferRAMImpl(2), .delaylength(1) ) Delay_syn_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_32), .outp(N_34) );
    synDelayWithEnable #( .bitwidth(24), .preferRAMImpl(2), .delaylength(1) ) Delay1_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_33), .outp(N_35) );
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(1) ) Delay10_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_63), .outp(N_38) );
    synDelayWithEnable #( .bitwidth(10), .preferRAMImpl(2), .delaylength(1) ) Delay11_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_11), .outp(N_39) );
    assign N_40 = N_62;
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(1) ) Delay13_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_70), .outp(N_41) );
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(1) ) Delay14_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_40), .outp(N_42) );
    synDelayWithEnable #( .bitwidth(23), .preferRAMImpl(2), .delaylength(1) ) Delay15_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_73), .outp(N_43) );
    synDelayWithEnable #( .bitwidth(8), .preferRAMImpl(2), .delaylength(1) ) Delay16_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_31), .outp(N_44) );
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(1) ) Delay17_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_42), .outp(N_45) );
    synDelayWithEnable #( .bitwidth(48), .preferRAMImpl(2), .delaylength(3) ) Delay2_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_36), .outp(N_37) );
    assign N_56 = N_66;
    assign N_57 = N_61;
    synDelayWithEnable #( .bitwidth(48), .preferRAMImpl(2), .delaylength(1) ) Delay5_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_75), .outp(N_58) );
    synDelayWithEnable #( .bitwidth(8), .preferRAMImpl(2), .delaylength(1) ) Delay6_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_68), .outp(N_59) );
    synDelayWithEnable #( .bitwidth(8), .preferRAMImpl(2), .delaylength(1) ) Delay7_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_71), .outp(N_60) );
    synDelayWithEnable #( .bitwidth(9), .preferRAMImpl(2), .delaylength(3) ) Delay8_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_12), .outp(N_61) );
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(3) ) Delay9_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_14), .outp(N_62) );
    synDelayWithEnable #( .bitwidth(1), .preferRAMImpl(2), .delaylength(6) ) Delaysrdy_block ( .clk(clk), .en(GlobalEnable1), .grst(GlobalResetSel), .rst(1'b0), .inp(N_1), .outp(N_2) );
  //start Extract
    assign N_63[0] = N_3[31];
  //end Extract
  //start Extract1
    assign N_64[0] = N_56[47];
  //end Extract1
  //start Extract11
    assign N_30[0] = N_27[48];
  //end Extract11
  //start Extract2
    assign N_66[0] = N_37[0];
    assign N_66[1] = N_37[1];
    assign N_66[2] = N_37[2];
    assign N_66[3] = N_37[3];
    assign N_66[4] = N_37[4];
    assign N_66[5] = N_37[5];
    assign N_66[6] = N_37[6];
    assign N_66[7] = N_37[7];
    assign N_66[8] = N_37[8];
    assign N_66[9] = N_37[9];
    assign N_66[10] = N_37[10];
    assign N_66[11] = N_37[11];
    assign N_66[12] = N_37[12];
    assign N_66[13] = N_37[13];
    assign N_66[14] = N_37[14];
    assign N_66[15] = N_37[15];
    assign N_66[16] = N_37[16];
    assign N_66[17] = N_37[17];
    assign N_66[18] = N_37[18];
    assign N_66[19] = N_37[19];
    assign N_66[20] = N_37[20];
    assign N_66[21] = N_37[21];
    assign N_66[22] = N_37[22];
    assign N_66[23] = N_37[23];
    assign N_66[24] = N_37[24];
    assign N_66[25] = N_37[25];
    assign N_66[26] = N_37[26];
    assign N_66[27] = N_37[27];
    assign N_66[28] = N_37[28];
    assign N_66[29] = N_37[29];
    assign N_66[30] = N_37[30];
    assign N_66[31] = N_37[31];
    assign N_66[32] = N_37[32];
    assign N_66[33] = N_37[33];
    assign N_66[34] = N_37[34];
    assign N_66[35] = N_37[35];
    assign N_66[36] = N_37[36];
    assign N_66[37] = N_37[37];
    assign N_66[38] = N_37[38];
    assign N_66[39] = N_37[39];
    assign N_66[40] = N_37[40];
    assign N_66[41] = N_37[41];
    assign N_66[42] = N_37[42];
    assign N_66[43] = N_37[43];
    assign N_66[44] = N_37[44];
    assign N_66[45] = N_37[45];
    assign N_66[46] = N_37[46];
    assign N_66[47] = N_37[47];
  //end Extract2
  //start Extract3
    assign N_67[0] = N_56[0];
    assign N_67[1] = N_56[1];
    assign N_67[2] = N_56[2];
    assign N_67[3] = N_56[3];
    assign N_67[4] = N_56[4];
    assign N_67[5] = N_56[5];
    assign N_67[6] = N_56[6];
    assign N_67[7] = N_56[7];
    assign N_67[8] = N_56[8];
    assign N_67[9] = N_56[9];
    assign N_67[10] = N_56[10];
    assign N_67[11] = N_56[11];
    assign N_67[12] = N_56[12];
    assign N_67[13] = N_56[13];
    assign N_67[14] = N_56[14];
    assign N_67[15] = N_56[15];
    assign N_67[16] = N_56[16];
    assign N_67[17] = N_56[17];
    assign N_67[18] = N_56[18];
    assign N_67[19] = N_56[19];
    assign N_67[20] = N_56[20];
    assign N_67[21] = N_56[21];
    assign N_67[22] = N_56[22];
    assign N_67[23] = N_56[23];
    assign N_67[24] = N_56[24];
    assign N_67[25] = N_56[25];
    assign N_67[26] = N_56[26];
    assign N_67[27] = N_56[27];
    assign N_67[28] = N_56[28];
    assign N_67[29] = N_56[29];
    assign N_67[30] = N_56[30];
    assign N_67[31] = N_56[31];
    assign N_67[32] = N_56[32];
    assign N_67[33] = N_56[33];
    assign N_67[34] = N_56[34];
    assign N_67[35] = N_56[35];
    assign N_67[36] = N_56[36];
    assign N_67[37] = N_56[37];
    assign N_67[38] = N_56[38];
    assign N_67[39] = N_56[39];
    assign N_67[40] = N_56[40];
    assign N_67[41] = N_56[41];
    assign N_67[42] = N_56[42];
    assign N_67[43] = N_56[43];
    assign N_67[44] = N_56[44];
    assign N_67[45] = N_56[45];
    assign N_67[46] = N_56[46];
  //end Extract3
  //start Extract4
    assign N_68[0] = N_3[23];
    assign N_68[1] = N_3[24];
    assign N_68[2] = N_3[25];
    assign N_68[3] = N_3[26];
    assign N_68[4] = N_3[27];
    assign N_68[5] = N_3[28];
    assign N_68[6] = N_3[29];
    assign N_68[7] = N_3[30];
  //end Extract4
  //start Extract5
    assign N_69[0] = N_3[0];
    assign N_69[1] = N_3[1];
    assign N_69[2] = N_3[2];
    assign N_69[3] = N_3[3];
    assign N_69[4] = N_3[4];
    assign N_69[5] = N_3[5];
    assign N_69[6] = N_3[6];
    assign N_69[7] = N_3[7];
    assign N_69[8] = N_3[8];
    assign N_69[9] = N_3[9];
    assign N_69[10] = N_3[10];
    assign N_69[11] = N_3[11];
    assign N_69[12] = N_3[12];
    assign N_69[13] = N_3[13];
    assign N_69[14] = N_3[14];
    assign N_69[15] = N_3[15];
    assign N_69[16] = N_3[16];
    assign N_69[17] = N_3[17];
    assign N_69[18] = N_3[18];
    assign N_69[19] = N_3[19];
    assign N_69[20] = N_3[20];
    assign N_69[21] = N_3[21];
    assign N_69[22] = N_3[22];
  //end Extract5
  //start Extract6
    assign N_70[0] = N_4[31];
  //end Extract6
  //start Extract7
    assign N_71[0] = N_4[23];
    assign N_71[1] = N_4[24];
    assign N_71[2] = N_4[25];
    assign N_71[3] = N_4[26];
    assign N_71[4] = N_4[27];
    assign N_71[5] = N_4[28];
    assign N_71[6] = N_4[29];
    assign N_71[7] = N_4[30];
  //end Extract7
  //start Extract8
    assign N_72[0] = N_4[0];
    assign N_72[1] = N_4[1];
    assign N_72[2] = N_4[2];
    assign N_72[3] = N_4[3];
    assign N_72[4] = N_4[4];
    assign N_72[5] = N_4[5];
    assign N_72[6] = N_4[6];
    assign N_72[7] = N_4[7];
    assign N_72[8] = N_4[8];
    assign N_72[9] = N_4[9];
    assign N_72[10] = N_4[10];
    assign N_72[11] = N_4[11];
    assign N_72[12] = N_4[12];
    assign N_72[13] = N_4[13];
    assign N_72[14] = N_4[14];
    assign N_72[15] = N_4[15];
    assign N_72[16] = N_4[16];
    assign N_72[17] = N_4[17];
    assign N_72[18] = N_4[18];
    assign N_72[19] = N_4[19];
    assign N_72[20] = N_4[20];
    assign N_72[21] = N_4[21];
    assign N_72[22] = N_4[22];
  //end Extract8
  //start Extract9
    assign N_73[0] = N_28[0];
    assign N_73[1] = N_28[1];
    assign N_73[2] = N_28[2];
    assign N_73[3] = N_28[3];
    assign N_73[4] = N_28[4];
    assign N_73[5] = N_28[5];
    assign N_73[6] = N_28[6];
    assign N_73[7] = N_28[7];
    assign N_73[8] = N_28[8];
    assign N_73[9] = N_28[9];
    assign N_73[10] = N_28[10];
    assign N_73[11] = N_28[11];
    assign N_73[12] = N_28[12];
    assign N_73[13] = N_28[13];
    assign N_73[14] = N_28[14];
    assign N_73[15] = N_28[15];
    assign N_73[16] = N_28[16];
    assign N_73[17] = N_28[17];
    assign N_73[18] = N_28[18];
    assign N_73[19] = N_28[19];
    assign N_73[20] = N_28[20];
    assign N_73[21] = N_28[21];
    assign N_73[22] = N_28[22];
  //end Extract9
  generate
  begin: Mult5_block
    wire  [47:0] tmpOut;
    wire  [23:0] tmpin1;
    wire  [23:0] tmpin2;
    wire  [47:0] med;
    assign med = tmpOut ;
    assign N_36 = med[47:0];
    assign tmpin1 = $unsigned({1'b0,N_34});
    assign tmpin2 = $unsigned({1'b0,N_35});
    assign tmpOut = tmpin1 * tmpin2;
  end // Mult5_block
  endgenerate
  assign N_75 = (N_64 == 0) ? N_19 : N_56; // mux block
  //begin Inverter 
    wire   [0:0] Inverter_medo;
    wire  [0:0] Inverter_tmpOut;
    assign Inverter_medo = $unsigned(Inverter_tmpOut) ;
    assign N_74 = Inverter_medo[0:0];
    synInverter #(1) Inverter(.inp(N_64),.outp(Inverter_tmpOut));
  //end Inverter 
  generate
  begin: Binary_Logic1_block
    assign N_14 = (N_38 ^ N_41);
  end // Binary_Logic1_block;
  endgenerate
assign N_26 = 7'b1111111;
assign N_25 = 1'b1;
assign N_24 = 1'b1;
assign GlobalResetSel = GlobalReset;
endmodule

//-----------------------------------------

//@
module smc_float_multiplier (
  input clk,
  input GlobalReset,
  input [31:0] x_i_porty, // ufix32_En0
  input [31:0] y_i_porty, // ufix32_En0
  output [31:0] z_o_portx, // ufix32_En0
  output srdyo_o, // ufix1
  input srdyi_i // ufix1
//@
);
//@

wire [0:0] N_5;  
wire [31:0] y_i_N_porty_1_5;  
wire [31:0] x_i_N_porty_1_11;  
wire [0:0] GlobalEnableSignal1;  
wire [31:0] N_8;  
wire [0:0] N_9;  
wire [31:0] z_o_N_portx_1_32;  
wire [31:0] N_7;  
wire [31:0] N_6;  
wire GlobalResetSel;
  wire GlobalEnable1;
  assign GlobalEnable1 = 1;
    n_i  myx_i (
      .clk(clk),
      .GlobalEnable1(GlobalEnable1),
      .GlobalReset(GlobalResetSel),
      .porty(x_i_N_porty_1_11),
      .y(N_6)    );
    n_i  myy_i (
      .clk(clk),
      .GlobalEnable1(GlobalEnable1),
      .GlobalReset(GlobalResetSel),
      .porty(y_i_N_porty_1_5),
      .y(N_7)    );
    z1_o  myz_o (
      .clk(clk),
      .GlobalEnable1(GlobalEnable1),
      .GlobalReset(GlobalResetSel),
      .x(N_8),
      .portx(z_o_N_portx_1_32)    );
    FP_Multiplier  myFP_Multiplier (
      .clk(clk),
      .GlobalEnable1(GlobalEnable1),
      .GlobalReset(GlobalResetSel),
      .x(N_6),
      .y(N_7),
      .srdyi(N_5),
      .z(N_8) ,
      .srdyo(N_9)    );
  assign GlobalEnableSignal1 = GlobalEnable1;
  assign x_i_N_porty_1_11 = x_i_porty;
  assign y_i_N_porty_1_5 = y_i_porty;
assign z_o_portx = z_o_N_portx_1_32;
assign srdyo_o = N_9;
  assign N_5 = srdyi_i;
assign GlobalResetSel = GlobalReset;
endmodule

//-----------------------------------------
