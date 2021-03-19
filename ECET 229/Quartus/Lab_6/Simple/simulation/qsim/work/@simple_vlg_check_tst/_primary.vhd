library verilog;
use verilog.vl_types.all;
entity Simple_vlg_check_tst is
    port(
        aout            : in     vl_logic;
        bout            : in     vl_logic;
        dir             : in     vl_logic;
        LEDG0           : in     vl_logic;
        LEDG1           : in     vl_logic;
        LEDG2           : in     vl_logic;
        LEDG3           : in     vl_logic;
        LEDG4           : in     vl_logic;
        LEDG5           : in     vl_logic;
        LEDG6           : in     vl_logic;
        LEDG7           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Simple_vlg_check_tst;
