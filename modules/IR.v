module IR(input [15:0] mem_data,
          input clk,
		  input IRin, //load enable
		  input hazard,
		  input branch,
		  output reg [3:0] opcode,
          output reg [3:0] dest_reg,
          output reg [3:0] src_reg1,
          output reg [3:0] src_reg2);
        
	initial begin
	   //loading the op to be NOP
	   opcode <= 4'b1100; 
	   dest_reg <= 0;
	   src_reg1 <= 0;
	   src_reg2 <= 0;
	end
	
	always@(posedge clk)
    begin
        if(IRin)
        begin
            if ( hazard || branch ) begin
                src_reg2 <= mem_data[3:0];
                src_reg1 <= mem_data[7:4];
                dest_reg <= mem_data[11:8];
                opcode <= 4'b1100; end
            else begin
                src_reg2 <= mem_data[3:0];
                src_reg1 <= mem_data[7:4];
                dest_reg <= mem_data[11:8];
                opcode <= mem_data[15:12]; end
        end
    end
	


endmodule