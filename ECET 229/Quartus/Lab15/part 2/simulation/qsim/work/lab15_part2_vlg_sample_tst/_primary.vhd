library verilog;
use verilog.vl_types.all;
entity lab15_part2_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab15_part2_vlg_sample_tst;
