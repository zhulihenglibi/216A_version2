library verilog;
use verilog.vl_types.all;
entity count_global is
    port(
        GlobalReset     : in     vl_logic;
        clk             : in     vl_logic;
        srdyi_counter   : in     vl_logic;
        clk_stop        : in     vl_logic;
        count_global    : out    vl_logic_vector(4 downto 0)
    );
end count_global;
