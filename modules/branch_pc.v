module branch_pc(input clk,
input [7:0] pc_address,
                 input [3:0] offset,
                 output reg [7:0] adjusted_pc);
                 
always@( * )
begin
    adjusted_pc = (pc_address-1) + { {4{offset[3]}}, offset};
end

endmodule
