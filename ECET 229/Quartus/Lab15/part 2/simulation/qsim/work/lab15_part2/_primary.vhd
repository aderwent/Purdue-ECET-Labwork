library verilog;
use verilog.vl_types.all;
entity lab15_part2 is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(4 downto 0)
    );
end lab15_part2;
