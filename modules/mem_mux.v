module mem_mux(input fwd,
               input [15:0] rf_0_s,
               input [15:0] adder_data,
               output reg [15:0] address);
               
always@( * )
begin
if ( fwd )
    address = adder_data;
else
    address = rf_0_s;
end

endmodule