module tb_transfer_and_shift_system;
  reg clk;
  reg reset;
  reg [3:0] A_in;
  reg [3:0] B_in;
  reg start;
  wire [3:0] A;
  wire [3:0] B;
  wire [3:0] C;
    transfer_and_shift_system uut (
      .clk(clk),
      .reset(reset),
      .A_in(A_in),
      .B_in(B_in),
      .start(start),
      .A(A),
      .B(B),
      .C(C)
    );
initial begin
clk = 0;
forever #5 clk = ~clk; // 10 ns clock period
end
  
initial begin
// Initialize signals
reset = 1;
A_in = 4'b0000;
B_in = 4'b0000;
start = 0;
#10;
reset = 0;
// Test case 1: A < B
A_in = 4'b0010;
B_in = 4'b0101;
start = 1;
#10;
start = 0;
#10;
$display("A: %b, B: %b, C (A << 1): %b", A, B, C);
// Test case 2: A > B
A_in = 4'b0101;
B_in = 4'b0010;
start = 1;
#10;
start = 0;
#10;
$display("A: %b, B: %b, C (B >> 1): %b", A, B, C);
// Test case 3: A = B
A_in = 4'b0101;
B_in = 4'b0101;
start = 1;
#10;
start = 0;
#10;
$display("A: %b, B: %b, C (A = B): %b", A, B, C);
// Test case 4: Reset the registers
#10;
reset = 1;
#10;
reset = 0;
#10;
$stop;
end
endmodule
