module display_decoder(
    input  wire clk,
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output reg a,//1-bit variable register // a, b, c, d, e, f, g are the final outputs.
    output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g
);

  
  
  assign a=(!D&!C&!B&A)|(!D&C&!B&!A);
  assign b=(!D&C&!B&A)|(!D&C&B&!A);
  assign c=(!D&!C&B&!A);
  assign d=(!D&!C&!B&A)|(!D&C&!B&!A)|(!D&C&B&A);
  assign e=(!D&!C&!B&A)|(!D&!C&B&A)|(!D&C&!B&!A)|(!D&C&!B&A)|(!D&C&B&A)|(D&!C&!B&A);
  assign f=(!D&!C&!B&A)|(!D&!C&B&!A)|(!D&!C&B&A)|(!D&C&B&A);
  assign g=(!D&!C&!B&!A)|(!D&!C&!B&A)|(!D&C&B&A);

  
  
endmodule