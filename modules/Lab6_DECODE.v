module Lab6_DECODE(input [3:0] opcode,
			  output reg D,       
			  output reg WrX,
			  output reg MemWr,   
			  output reg MemRd,
			  output reg imm,     
			  output reg bz,      
			  output reg bnz,
			  output reg beq,
			  output reg bneq,
			  output reg bgt,
			  output reg blt,     
			  output reg jmp,     
			  output reg sub,     
			  output reg spc,
			  output reg halt);

always @ ( * )
begin
    if ( opcode == 0 ) begin
        D=0;
        WrX=1;
        MemWr=0;
        MemRd=1;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 1 ) begin
        D=0;
        WrX=0;
        MemWr=1;
        MemRd=1;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 2 ) begin
        D=0;
        WrX=1;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0; end
    if ( opcode == 3 ) begin
        D=0;
        WrX=1;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=1;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 4 ) begin
        D=0;
        WrX=1;
        MemWr=0;
        MemRd=0;
        imm=1;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 5 ) begin
        D=0;
        WrX=1;
        MemWr=0;
        MemRd=0;
        imm=1;
        sub=1;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 6 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=1; end
    if ( opcode == 7 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=1;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=1; end
    if ( opcode == 8 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=1;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 9 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=1;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 12 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 13 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=1;
        bneq=0;
        bgt=0;
        blt=0; end
    if ( opcode == 14 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=1;
        bgt=0;
        blt=0; end
    if ( opcode == 15 ) begin
        D=0;
        WrX=0;
        MemWr=0;
        MemRd=0;
        imm=0;
        sub=0;
        halt=0;
        bz=0;
        bnz=0;
        beq=0;
        bneq=0;
        bgt=1;
        blt=0; end
end      

endmodule
