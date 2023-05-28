`timescale 1ns / 1ps

module TOP(
          input [7:0] instruction,
          output [3:0] result
          );
          
wire [2:0] a1;
wire [2:0] a2;
wire [3:0] o1;
wire [3:0] o2;

alu alu0(.instruction(instruction),. addr1(a1), .addr2(a2), .op1(o1), .op2(o2), .result(result));

REG regs0(.addr1(a1), .addr2(a2), .out1(o1), .out2(o2));
endmodule
