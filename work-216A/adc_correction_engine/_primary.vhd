library verilog;
use verilog.vl_types.all;
entity adc_correction_engine is
    port(
        sys_clk_i       : in     vl_logic;
        reset_i         : in     vl_logic;
        adc_correction_in: in     vl_logic_vector(20 downto 0);
        srdyi           : in     vl_logic;
        adc_correction_out: out    vl_logic_vector(20 downto 0);
        srdyo           : out    vl_logic;
        section_limit   : in     vl_logic_vector(19 downto 0);
        select_section_coefficients_stdev_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_stdev_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_stdev_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_stdev_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_mean_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_mean_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_mean_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_mean_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_9_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_8_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_7_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_6_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_5_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_10_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_4_0_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_9_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_8_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_7_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_6_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_5_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_10_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_3_0_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_9_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_8_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_7_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_6_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_5_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_10_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_2_0_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_9_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_8_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_7_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_6_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_5_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_4_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_3_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_2_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_10_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_1_porty: in     vl_logic_vector(31 downto 0);
        select_section_coefficients_coeff_1_0_porty: in     vl_logic_vector(31 downto 0)
    );
end adc_correction_engine;