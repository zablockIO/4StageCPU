module lab6_IMEM(input clk,
                 input [7:0] address,
                 input [7:0] address1,
                 output reg [15:0] DataOut1,
			     output reg [15:0] DataOut);
			  

	reg [15:0] instructions [256:0]; 
	
	initial begin 
		//$readmemh("l6_fwd.mem", instructions);
        //$readmemh("load_use.mem", instructions);
        //$readmemh("branch_base.mem", instructions);
       $readmemh("pro_instr.mem", instructions);
        //$readmemh("signed_test.mem", instructions);
		//$readmemh("debug_instr.mem", instructions);
	end
	
	always@(*)
	begin
		DataOut <= instructions[address];
		DataOut1 <= instructions[address1];
	end
	
	
endmodule