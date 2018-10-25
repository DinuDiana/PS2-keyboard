library verilog;
use verilog.vl_types.all;
entity ps2 is
    port(
        clock_key       : in     vl_logic;
        data_key        : in     vl_logic;
        clock_fpga      : in     vl_logic;
        reset           : in     vl_logic;
        led             : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        new_code        : out    vl_logic
    );
end ps2;
