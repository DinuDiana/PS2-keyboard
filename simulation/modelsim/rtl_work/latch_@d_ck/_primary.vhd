library verilog;
use verilog.vl_types.all;
entity latch_D_ck is
    port(
        D               : in     vl_logic;
        ck              : in     vl_logic;
        Q               : out    vl_logic
    );
end latch_D_ck;
