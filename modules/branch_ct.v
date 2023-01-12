module branch_ct(input bz,
                 input bnz,
                 input beq,
                 input bneq,
                 input bgt,
                 input blt,
                 input jmp,
                 input [15:0] rf_0,
                 input [15:0] rf_1,
                 output reg load_new_pc);
                     
always@( * ) 
begin
if ( bz && $signed(rf_0) == 0 )
    load_new_pc=1;
else if ( bnz && $signed(rf_0) != 0 )
    load_new_pc=1;
else if ( beq && $signed(rf_0) == $signed(rf_1) )
    load_new_pc=1;
else if ( bneq && $signed(rf_0) != $signed(rf_1) )
    load_new_pc=1;
else if ( bgt && $signed(rf_0) > $signed(rf_1) )
    load_new_pc=1;
else if ( blt && $signed(rf_0) < $signed(rf_1) )
    load_new_pc=1;
else
    load_new_pc=0;
end


endmodule
