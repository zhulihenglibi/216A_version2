library verilog;
use verilog.vl_types.all;
entity multiplier_output_reg is
    port(
        srdyi           : in     vl_logic;
        clk             : in     vl_logic;
        GlobalReset     : in     vl_logic;
        count_global    : in     vl_logic_vector(4 downto 0);
        coeff_i         : in     vl_logic_vector(31 downto 0);
        mult_i          : in     vl_logic_vector(31 downto 0);
        add_prev        : in     vl_logic_vector(31 downto 0);
        add1_o          : out    vl_logic_vector(31 downto 0);
        add2_o          : out    vl_logic_vector(31 downto 0);
        tmp_store       : out    vl_logic_vector(31 downto 0);
        srdyo           : out    vl_logic
    );
end multiplier_output_reg;
