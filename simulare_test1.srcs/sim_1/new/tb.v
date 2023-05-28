`timescale 1ns / 1ps

module tb();

reg [7:0] instr_t;
wire [3:0] res_t;

TOP DUT(.instruction(instr_t), .result(res_t));

initial begin
          instr_t=8'b00000000; //opcode este 2'b00 => adun? valorile reg?site în cei doi regi?tri 
          // valorile adreselor sunt 0 deci 0+0 = 0 la iesire;
      #10
          instr_t=8'b00110000; //opcode este 2'b00 => adun? valorile reg?site în cei doi regi?tri
          // addr2 este 3'b000, dar addr1 este 3'b110. Iesirea este pe 4b deci cand le adunam, adaugam
          // un 0 la al patrulea bit => iesirea 4'b0110;
      #10
          instr_t=8'b01001100; //opcode este 2'b01 => scade valorile reg?site în cei doi regi?tri
          // addr1 este 3'b001, iar addr2 este 3'b100. La scadere, al patrulea bit va fi 1 datorita
          // restului ramas de la 0-1. Asadar iesirea este 4'b1101;
      #10
          instr_t=8'b01001111; //opcode este 2'b01 => scade valorile reg?site în cei doi regi?tri
          // addr1 este 3'b001, iar addr2 este 3'b111. La scadere, 1-1=0, 0-1 este 1 dar ramane restul 1 in minte,
          // dupa care urmatorul 0-1 ar fi 1 dar cu 1 din minte da 0. Asadar iesirea este 4'b1010, al patrulea bit
          //fiind ultimul rest ramas (CF);
      #10
          instr_t=8'b10001100; //opcode este 2'b10 => efectueaza operatia SI LOGIC pe biti
          // addr1 este 3'b001, iar addr2 este 3'b100. La SI LOGIC, iesirea va fi 1 numai daca ambii
          // biti(unul de la addr1 si unul de la addr2), sunt 1. Asadar iesirea este 4'b0000 pentru ca
          // nu avem ambii biti 1 pe aceeasi pozitie;
      #10
          instr_t=8'b10111100; //opcode este 2'b10 => efectueaza operatia SI LOGIC pe biti
          // addr1 este 3'b111, iar addr2 este 3'b100. La SI LOGIC, iesirea va fi 1 numai daca ambii
          // biti(unul de la addr1 si unul de la addr2), sunt 1. Asadar iesirea este 4'b0100 pentru ca
          // avem un singur caz de ambii biti 1 pe aceeasi pozitie, iar pentru a forma 4 biti la iesire,
          //adaugam un 0 la al patrulea bit;
      #10
          instr_t=8'b11000000; //opcode este 2'b11 => efectueaza operatia SAU LOGIC pe biti
          // addr1 este 3'b000, iar addr2 este 3'b000. La SAU LOGIC, iesirea va fi 1 numai daca unul
          // dintre biti(unul de la addr1 sau unul de la addr2 sau ambii), este 1. Asadar iesirea este 4'b0000 pentru ca
          // nu avem niciun bit 1;
      #10
          instr_t=8'b11001101; //opcode este 2'b11 => efectueaza operatia SAU LOGIC pe biti
          // addr1 este 3'b001, iar addr2 este 3'b101. La SAU LOGIC, iesirea va fi 1 numai daca unul
          // dintre biti(unul de la addr1 sau unul de la addr2 sau ambii), este 1. Asadar iesirea este 4'b0101 pentru ca
          // avem biti de 1. 0 sau 1 = 1, 1 sau 1 = 1 si adaugam un 0 la al patrulea bit;
    
#10 $stop();
end
endmodule
