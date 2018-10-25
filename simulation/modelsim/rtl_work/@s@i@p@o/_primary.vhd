library verilog;
use verilog.vl_types.all;
entity SIPO is
    port(
        din             : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        dout            : out    vl_logic_vector(10 downto 0);
        num             : out    vl_logic_vector(3 downto 0)
    );
end SIPO;
