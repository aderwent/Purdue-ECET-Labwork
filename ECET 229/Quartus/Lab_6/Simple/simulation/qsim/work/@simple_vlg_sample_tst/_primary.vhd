library verilog;
use verilog.vl_types.all;
entity Simple_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        zero            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Simple_vlg_sample_tst;
