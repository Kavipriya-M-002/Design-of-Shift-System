module shift_system(
  input wire clk,
  input wire reset,
  input wire [3:0] A_in,
  input wire [3:0] B_in,
  input wire start,
  output reg [3:0] A,
  output reg [3:0] B,
  output reg [3:0] C
);
  
always @(posedge clk or posedge reset) begin
if (reset) begin
  A <= 4'b0000;
  B <= 4'b0000;
  C <= 4'b0000;
end else
if (start) begin
  A <= A_in;
  B <= B_in;
// Given conditions
if (A < B) begin
  C <= A << 1; // Shift A left by 1 and transfer to C
end else if (A > B) begin
  C <= B >> 1; // Shift B right by 1 and transfer to C
end else begin
  C <= A; // Transfer A to C (when A == B)
end
end
end
endmodule
