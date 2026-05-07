// Code your design here
module mac_unit(
  input [3:0] a,x,
  input clk,rst,
  output reg [4:0] acc
);
  always@(posedge clk or negedge rst) begin
    if(!rst)
      acc<=1'b0;
    else
      acc<=acc+(a*x);
  end
endmodule