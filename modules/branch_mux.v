module branch_mux(input [1:0] forward_a,
                  input [1:0] forward_b,
                  input [15:0] rf_0,
                  input [15:0] rf_1,
                  input [15:0] adder_data,
                  input [15:0] wbmux_data,
                  output reg [15:0] mux_output_a,
                  output reg [15:0] mux_output_b);
                  
always@( * )
begin
if ( forward_a == 1 )
    mux_output_a = adder_data;
if ( forward_a == 2 )
    mux_output_a = wbmux_data;
if ( forward_a == 0 )
    mux_output_a = rf_0;
if (forward_b == 1 )
    mux_output_b = adder_data;
if ( forward_b == 2 )
    mux_output_b = wbmux_data;
if ( forward_b == 0 )
    mux_output_b = rf_1; 
end

endmodule