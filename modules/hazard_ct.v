module hazard_ct(input [7:0] pc,
                 input MemRd_s,
                 input [3:0] dest_s,
                 input [3:0] src1_reg,
                 input [3:0] src2_reg,
                 output reg hazard,
                 output reg [7:0] new_pc);
                 
always@( * )
begin
if ( MemRd_s && ((dest_s == src1_reg) || (dest_s == src2_reg)) ) begin
    hazard=1;
    new_pc=pc; end
else
    hazard=0;
end

endmodule