library verilog;
use verilog.vl_types.all;
entity control is
    port(
        srdyi           : in     vl_logic;
        srdyo           : out    vl_logic;
        sum_en          : out    vl_logic;
        sum_rst         : out    vl_logic;
        clk             : in     vl_logic;
        count_global    : in     vl_logic_vector(4 downto 0);
        GlobalReset     : in     vl_logic;
        global_srdyi    : in     vl_logic;
        coeff_sel       : out    vl_logic_vector(3 downto 0)
    );
end control;
