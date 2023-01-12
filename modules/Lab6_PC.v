module Lab6_PC(input clk,
               input hazard,
               input load_new_pc,
               input [7:0] new_pc,
               output reg [7:0] PC_out);
    
    reg [7:0] counter = 0;
    
    always@(posedge clk)
    begin
    if ( hazard ) begin
        PC_out = counter - 2;
        counter = counter - 1; end
    else if ( load_new_pc) begin
        PC_out = new_pc;
        counter = new_pc + 1; end
    else begin
        PC_out = counter;
        counter = counter + 1; end
    end

endmodule
