library verilog;
use verilog.vl_types.all;
entity Simple is
    port(
        LEDG0           : out    vl_logic;
        zero            : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        LEDG1           : out    vl_logic;
        LEDG2           : out    vl_logic;
        LEDG3           : out    vl_logic;
        aout            : out    vl_logic;
        bout            : out    vl_logic;
        dir             : out    vl_logic;
        LEDG4           : out    vl_logic;
        LEDG5           : out    vl_logic;
        LEDG6           : out    vl_logic;
        LEDG7           : out    vl_logic
    );
end Simple;
