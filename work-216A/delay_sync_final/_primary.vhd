library verilog;
use verilog.vl_types.all;
entity delay_sync_final is
    port(
        sync_i          : in     vl_logic_vector(31 downto 0);
        srdyi           : in     vl_logic;
        clk             : in     vl_logic;
        sync_o          : out    vl_logic_vector(31 downto 0);
        GlobalReset     : in     vl_logic;
        srdyo           : out    vl_logic
    );
end delay_sync_final;