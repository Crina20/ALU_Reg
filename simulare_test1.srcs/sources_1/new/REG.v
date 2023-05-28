`timescale 1ns / 1ps

module REG(
          input [2:0] addr1,
          input [2:0] addr2,
          
          output reg [3:0] out1,
          output reg [3:0] out2
          );

reg [3:0] REG [0:7];

integer i;

always @(*)
  begin
        for(i=0; i<8; i=i+1)
        begin
          REG[i]=i;
          
          if(addr1==i)
          out1=REG[i];
          
          if(addr2==i) 
          out2=REG[i]; 
        end
  end


endmodule
