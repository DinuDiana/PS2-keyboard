library verilog;
use verilog.vl_types.all;
entity verificare is
    port(
        clock_intermediar: in     vl_logic;
        reset           : in     vl_logic;
        data_in         : in     vl_logic;
        clock_fpga      : in     vl_logic;
        data_in_parallel: in     vl_logic_vector(10 downto 0);
        ok              : out    vl_logic;
        count           : in     vl_logic_vector(3 downto 0)
    );
end verificare;
