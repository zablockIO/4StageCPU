module WBMux(input [15:0] MDR_data,
			 input [15:0] G_data,
			 input [7:0] PC_data,
			 input load,
			 output SavePC,
			 output reg [15:0] mux_output);

always @ ( * )
begin
    if ( load )
        mux_output <= MDR_data;
    else
        mux_output <= G_data;
end

endmodule
