// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a,x;
  reg clk,rst;
  wire [4:0] acc;
  
  mac_unit m1(.a(a),.x(x),.clk(clk),.rst(rst),.acc(acc));
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    $monitor("rst=%0b | clk=%0b | a=%0d | x=%0d | acc=%0d",rst,clk,a,x,acc);
    rst=0;#10;
    rst=1;a=2;x=1;#10;
    a=3;x=1;#10;
    $finish;
  end
endmodule