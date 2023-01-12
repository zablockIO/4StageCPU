module STAGING (input clk,
           input LD_EN,
           input WrX_in,
           output reg Wrx_out,
           input sub_in,
           output reg sub_out,
           input [3:0] op_in,
           output reg [3:0] op_out,
           input MemRd_in,
           output reg MemRd_out,
           input MemWr_in,
           output reg MemWr_out,
           input [3:0] dst_in, //write address
           output reg [3:0] dst_out,
           input [15:0] rf_0_in,
           output reg [15:0] rf_0_out,
           input [15:0] rf_1_in,
           output reg [15:0] rf_1_out,
           input D_in,
           output reg D_out,
           input [15:0] rfdata_in,
           output reg [15:0] rfdata_out,
           input spc_in,
           output reg spc_out,
           input hazard,
           input branch);

//reg exe_WrX, [3:0] exe_dst;

always @ (posedge clk)
  begin
    if (LD_EN)
      begin
      if ( hazard || branch ) begin
          op_out <= 4'b1100;
          MemRd_out <= 0;
          Wrx_out <= 0; end
      else begin
          sub_out <= sub_in;
          op_out <= op_in;
          MemRd_out <= MemRd_in;
          MemWr_out <= MemWr_in;
          rf_0_out <= rf_0_in;
          rf_1_out <= rf_1_in;
          D_out <= D_in;
          spc_out <= spc_in;
          dst_out <= dst_in;
          Wrx_out <= WrX_in;
          rfdata_out <= rfdata_in; end
      end

  end
endmodule
