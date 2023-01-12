module rf_mux(input beq,
              input bneq,
              input bgt,
              input blt,
              input [3:0] src2_reg,
              input [3:0] dst_reg,
              output reg [3:0] mux_out);
              
always@( * )
begin
    if ( beq || bneq || bgt || blt )
        mux_out = dst_reg;
    else
        mux_out  = src2_reg;
end

endmodule
