`timescale 1ns / 1ps

module alu(
           input [7:0] instruction,
           input [3:0] op1,
            input [3:0] op2,
            output reg  [3:0] result,
            output  [2:0] addr1,
             output  [2:0] addr2
          );
wire [1:0] opcode;
                    
assign addr2=instruction[2:0];
assign addr1=instruction[5:3];
assign opcode=instruction[7:6];

always @(*)
       begin
        case(opcode)
        2'b00: result=op1+op2;
        2'b01: result=op1-op2;
        2'b10: result=op1&op2;
        2'b11: result=op1|op2;
        endcase
       end
                          
          
endmodule
