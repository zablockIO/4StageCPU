module fwd_mux(input [15:0] rf_out,
               input [15:0] adder_data,
               input [15:0] wbmux_data,
               input [1:0] fwd,
               output reg [15:0] fwd_mux_out);
               
always@( * )
begin
fwd_mux_out <= rf_out;
if ( fwd == 1 )
    fwd_mux_out <= adder_data;
if ( fwd == 2 )
    fwd_mux_out <= wbmux_data;
//else
//    fwd_mux_out <= rf_out;
end

endmodule