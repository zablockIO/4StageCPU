module forward_ct(input WrX_s,
                  input WrX_s2,
                  input MemRd_s,
                  input imm,
                  input [3:0] dest_s,
                  input [3:0] src1_reg,
                  input [3:0] src2_reg,
                  input [3:0] dest_s2,
                  output reg [1:0] forward_a,
                  output reg [1:0] forward_b,
                  output reg forward_mem);

always@( * )
begin
forward_a=0;
forward_b=0;              
if ( WrX_s && (dest_s == src1_reg) )
    forward_a=1;
if ( WrX_s && (dest_s == src2_reg) )
    forward_b=1;
if ( WrX_s2 && (dest_s2 == src1_reg) && !(dest_s == src1_reg) )
    forward_a=2;
if ( WrX_s2 && (dest_s2 == src2_reg) && !(dest_s == src2_reg) && !imm )
    forward_b=2;
if ( MemRd_s && (dest_s == src1_reg) )
    forward_mem=1;
//if ( MemRd_s2 && (dest_s == src2_reg) )
//    forward_b=2;
end
  
endmodule
