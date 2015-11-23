`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:50 11/09/2015 
// Design Name: 
// Module Name:    adc_correction_engine 
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
	module adc_correction_engine(
    // input clock
	 input sys_clk_i,
	 // global reset
	 input reset_i,
	 // ADC input x : 21 bits
    input [20:0] adc_correction_in,
    // ADC input srdyi : high when data is ready
	 input srdyi,
	 // ADC output x: 21 bits
	 output [20:0] adc_correction_out,
	 // ADC output srdyo
	 output srdyo,
    // section limit
	 input [19:0] section_limit,
    //Reciprocal standard deviation for the centered and scaled fit
	 input [31:0] select_section_coefficients_stdev_4_porty, // ufix32
    input [31:0] select_section_coefficients_stdev_3_porty, // ufix32
    input [31:0] select_section_coefficients_stdev_2_porty, // ufix32
    input [31:0] select_section_coefficients_stdev_1_porty, // ufix32
	 //Negative meand for the centered and scaled fit
    input [31:0] select_section_coefficients_mean_4_porty, // ufix32
    input [31:0] select_section_coefficients_mean_3_porty, // ufix32
    input [31:0] select_section_coefficients_mean_2_porty, // ufix32
    input [31:0] select_section_coefficients_mean_1_porty, // ufix32
	 //Section 4 coefficients (x > 0, |x| > section_limit)
	 input [31:0] select_section_coefficients_coeff_4_9_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_8_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_7_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_6_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_5_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_4_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_3_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_2_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_10_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_1_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_4_0_porty, // ufix32
	 //Section 3 coefficients (x > 0, |x| <= section_limit)
	 input [31:0] select_section_coefficients_coeff_3_9_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_8_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_7_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_6_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_5_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_4_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_3_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_2_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_10_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_1_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_3_0_porty, // ufix32
	 //Section 2 coefficients (x <= 0, |x| <= section_limit)
	 input [31:0] select_section_coefficients_coeff_2_9_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_8_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_7_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_6_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_5_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_4_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_3_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_2_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_10_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_1_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_2_0_porty, // ufix32
	 //Section 1 coefficients (x <= 0, |x| > section_limit)
	 input [31:0] select_section_coefficients_coeff_1_9_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_8_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_7_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_6_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_5_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_4_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_3_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_2_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_10_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_1_porty, // ufix32
    input [31:0] select_section_coefficients_coeff_1_0_porty // ufix32
    
    
    
    
    
    
    
    
    
    
    
    
    );
// parameters

	 
wire [31:0] multi2_add2_o;
wire [31:0] coeff_reg[10:0];
wire [1:0] adc_section;

wire sum_en, sum_rst;
wire [31:0] smc_input_data;
wire [31:0] x_i_multiplier_d;
wire srdyo_smc_mul, srdyo_mul_add, srdyo_add_o;
wire [31:0] coefficient_32i_delay;
wire [31:0] coefficient_32i;
wire [31:0] multiplier_32o, adder_32i_1, adder_32i_2, delay_32i, adder_32o, delay_32o ;
assign adder_32i_1 = multi2_add2_o;
assign adder_32i_2 = coefficient_32i;
assign delay_32i = adder_32o;
assign x_i_multiplier_d = delay_32o;

wire [3:0] coeff_sel;
wire [31:0] adc_count_new;
wire [31:0] adc_count_smc;

//tmp registers and wires
wire smc_convert_o;

wire [31:0] coeff0_reg;
wire [31:0] coeff1_reg;
wire [31:0] coeff2_reg;
wire [31:0] coeff3_reg;
wire [31:0] coeff4_reg;
wire [31:0] coeff5_reg;
wire [31:0] coeff6_reg;
wire [31:0] coeff7_reg;
wire [31:0] coeff8_reg;
wire [31:0] coeff9_reg;
wire [31:0] coeff10_reg;

wire [31:0] mean_o;
wire [31:0] std_o;

wire [31:0] mean_select_sync;
wire [31:0] std_select_sync;
wire [31:0] mean_adjusted_o;
wire [31:0] std_adjusted_o;

wire [31:0] x_in_effective;
assign x_in_effective = std_adjusted_o;


wire [31:0] test_A=32'd32;
wire [31:0] test_B=32'd31;

wire delay_ready_o;
wire multi_srdyi; 
wire multi2_srdyo_o; 

wire add2_srdyo_o; 
wire [31:0] add2_delay_o;
wire srdyo_tmp;
wire srdyo_std_o;
wire [31:0] delay_32_final;
assign multi_srdyi = srdyo_std_o || delay_ready_o;
wire clk_stop;
wire [4:0] count_global;
wire [31:0] mult_1;
wire [31:0] mult_2;
wire [31:0] add_prev;
wire [31:0] tmp_store;
wire add_srdyo_i;
wire [31:0] add1_o;
wire [31:0] add2_o;
wire [31:0] adc_effective_in;

// coeff selector
coeff_register coeff_register(.coeff_sel(coeff_sel), .coeff0_reg(coeff0_reg), .coeff1_reg(coeff1_reg), .coeff2_reg(coeff2_reg),.coeff3_reg(coeff3_reg), .coeff4_reg(coeff4_reg), .coeff5_reg(coeff5_reg), .coeff6_reg(coeff6_reg) ,  .coeff7_reg(coeff7_reg) , .coeff8_reg(coeff8_reg) , .coeff9_reg(coeff9_reg),  .coeff10_reg(coeff10_reg),   .coeff_o(coefficient_32i_delay));
delay_sync coeff_sync_inst (.sync_i(coefficient_32i_delay), .srdyi(multi2_srdyo_o), .sync_o(coefficient_32i), .GlobalReset(reset_i));

count_global counter_final_inst(.srdyi_counter(srdyi), .count_global(count_global), .clk(sys_clk_i), .GlobalReset(reset_i), .clk_stop(clk_stop));


// convert 21 bits to 32 bits smc
fp_to_smc_float fp_to_smc_float (.x_i(adc_correction_in), .srdyi_i(srdyi), .srdyo_o(smc_convert_o), .GlobalReset(reset_i), .clk(sys_clk_i), .y_o_portx(adc_count_smc));
// comparator
coeff_comparator coeff_comparator (.adc_count_i(adc_correction_in), .adc_section_o(adc_section), .section_limit(section_limit));
// coefficient output 10 elements
coeff_selection coeff_selection (.adc_section(adc_section), .coeff0_o(coeff0_reg), .coeff1_o(coeff1_reg),.coeff2_o(coeff2_reg),.coeff3_o(coeff3_reg),.coeff4_o(coeff4_reg),.coeff5_o(coeff5_reg),.coeff6_o(coeff6_reg),.coeff7_o(coeff7_reg),.coeff8_o(coeff8_reg),.coeff9_o(coeff9_reg),.coeff10_o(coeff10_reg),.select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty), .select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty), .select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty), .select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty), .select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty), .select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty), .select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty), .select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty), .select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty),.select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty), .select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty), .select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty), .select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty), .select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty), .select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty), .select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty), .select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty), .select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty), .select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty), .select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty),.select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty), .select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty), .select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty), .select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty), .select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty), .select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty), .select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty), .select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty), .select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty), .select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty), .select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty),.select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty), .select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty),.select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty), .select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty), .select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty), .select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty), .select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty), .select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty), .select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty), .select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty), .select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty),.select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty), .select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty));

mult_select mult_select (.clk(sys_clk_i),.adc_effective(adc_effective_in), .std_i(std_o), .mult_2(mult_2), .count_global(count_global));

// mean and standard deviation selector
mean_selection mean_selection_int (.adc_section(adc_section), .mean_o(mean_o), .select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty), .select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty), .select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty), .select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty) );
std_selection std_selection_int (.adc_section(adc_section), .std_o(std_o), .select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty), .select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty), .select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty), .select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty));

// mean sync block
//delay_sync mean_sync_inst (.sync_i(mean_o), .srdyi(smc_convert_o), .sync_o(mean_select_sync), .GlobalReset(reset_i));
// std sync block
//delay_sync std_sync_inst (.sync_i(std_o), .srdyi(srdyo_m_std), .sync_o(std_select_sync), .GlobalReset(reset_i));

// -M adder 
//smc_float_adder smc_float_adder_inst_mean_adjusted (.x_i_porty(adc_count_smc), .y_i_porty(mean_select_sync), .srdyi_i(smc_convert_o), .GlobalReset(reset_i), .clk(sys_clk_i), .srdyo_o(srdyo_m_std), .z_o_portx(mean_adjusted_o));
// 1/sigma multiplier
//smc_float_multiplier smc_float_multiplier_inst_std_adjusted (.x_i_porty(mean_adjusted_o), .y_i_porty(std_select_sync), .srdyi_i(srdyo_m_std), .GlobalReset(reset_i), . clk(sys_clk_i), .srdyo_o(srdyo_std_o), .z_o_portx(std_adjusted_o));

// coefficient multiplier
smc_float_multiplier smc_float_multiplier_inst_2 (.x_i_porty(mult_1), .y_i_porty(mult_2), .srdyi_i(delay_ready_o), .GlobalReset(reset_i), . clk(sys_clk_i), .srdyo_o(multi2_srdyo_o), .z_o_portx(multi2_add2_o));
multiplier_output_reg multiplier_output_reg_inst ( .add1_o(add1_o), .add2_o(add2_o), .tmp_store(tmp_store), .srdyo(add_srdyo_i), .srdyi(multi2_srdyo_o), .GlobalReset(reset_i), .clk(sys_clk_i), .count_global(count_global), .coeff_i(coefficient_32i_delay), .mult_i(multi2_add2_o), .add_prev(tmp_store));  
   
   
   

// coefficient adder
smc_float_adder smc_float_adder_inst_2 (.x_i_porty(add1_o), .y_i_porty(add2_o), .srdyi_i(add_srdyo_i), .GlobalReset(reset_i), .clk(sys_clk_i), .srdyo_o(add2_srdyo_o), .z_o_portx(add2_delay_o));

// control block
control control(.global_srdyi(srdyi), .count_global(count_global), .srdyi(add2_srdyo_o), .srdyo(srdyo_tmp), .sum_en(sum_en), .sum_rst(sum_rst), .clk(sys_clk_i), .GlobalReset(reset_i), .coeff_sel(coeff_sel));
// sum_delay_block
delay_sum_block delay_sum_block(.clk_stop(clk_stop), .adc_effective(adc_effective_in), .adc_final(adc_effective_in),.adc_smc(adc_count_smc), .mult_1(mult_1),.count_global(count_global), .mean_i(mean_o), .std_i(std_o),.Global_srdyi(srdyi), .output_ready(srdyo_tmp),.coeff_sel(coeff_sel),.x_i_porty(add2_delay_o), .sum_en(sum_en), .sum_rst(sum_rst), .srdyi_i(add2_srdyo_o), .GlobalReset(reset_i), .clk(sys_clk_i), .z_o_portx(delay_32o), .delay_o(delay_ready_o));

//delay_sync final_output_sync (.sync_i(delay_32o),.srdyi(srdyo_tmp),.sync_o(delay_32_final), .GlobalReset(reset_i));

// smc to float points
smc_float_to_fp smc_float_to_fp_inst (.x_i_porty(delay_32o), .srdyi_i(srdyo_tmp), .GlobalReset(reset_i), .clk(sys_clk_i), .y_o(adc_correction_out), .srdyo_o(srdyo));


endmodule
