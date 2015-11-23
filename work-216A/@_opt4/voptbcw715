library verilog;
use verilog.vl_types.all;
entity delay_sum_block is
    port(
        x_i_porty       : in     vl_logic_vector(31 downto 0);
        sum_en          : in     vl_logic;
        sum_rst         : in     vl_logic;
        srdyi_i         : in     vl_logic;
        GlobalReset     : in     vl_logic;
        clk             : in     vl_logic;
        output_ready    : in     vl_logic;
        coeff_sel       : in     vl_logic_vector(2 downto 0);
        Global_srdyi    : in     vl_logic;
        mean_i          : in     vl_logic_vector(31 downto 0);
        std_i           : in     vl_logic_vector(31 downto 0);
        count_global    : in     vl_logic_vector(4 downto 0);
        adc_smc         : in     vl_logic_vector(31 downto 0);
        adc_effective   : in     vl_logic_vector(31 downto 0);
        clk_stop        : out    vl_logic;
        z_o_portx       : out    vl_logic_vector(31 downto 0);
        delay_o         : out    vl_logic;
        mult_1          : out    vl_logic_vector(31 downto 0);
        adc_final       : out    vl_logic_vector(31 downto 0)
    );
end delay_sum_block;
