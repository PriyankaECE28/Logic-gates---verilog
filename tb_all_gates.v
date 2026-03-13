`timescale 1ns/1ps

module tb_all_gates;
    // Testbench signals
    reg a, b;
    wire and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out;
    
    // Instantiate all gates
    and_gate u_and (.a(a), .b(b), .c(and_out));
    or_gate  u_or  (.a(a), .b(b), .c(or_out));
    not_gate u_not (.a(a), .c(not_out));  // NOT gate only needs one input
    nand_gate u_nand (.a(a), .b(b), .c(nand_out));
    nor_gate  u_nor  (.a(a), .b(b), .c(nor_out));
    xor_gate  u_xor  (.a(a), .b(b), .c(xor_out));
    xnor_gate u_xnor (.a(a), .b(b), .c(xnor_out));
    
    // Generate VCD file for waveform viewing
    initial begin
        $dumpfile("all_gates.vcd");
        $dumpvars(0, tb_all_gates);
    end
    
    // Apply test vectors and display results
    initial begin
        $display("==========================================================");
        $display("LOGIC GATES TRUTH TABLE");
        $display("==========================================================");
        $display("Time\tINPUTS\t\t\tOUTPUTS");
        $display("-----\t------\t\t\t-------");
        $display("     \tA B\tAND OR NOT NAND NOR XOR XNOR");
        $display("==========================================================");
        
        // Test all 4 combinations
        a = 0; b = 0; #10;
        $display("%0t\t%d %d\t  %d  %d  %d   %d   %d   %d   %d", 
                 $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
        
        a = 0; b = 1; #10;
        $display("%0t\t%d %d\t  %d  %d  %d   %d   %d   %d   %d", 
                 $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
        
        a = 1; b = 0; #10;
        $display("%0t\t%d %d\t  %d  %d  %d   %d   %d   %d   %d", 
                 $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
        
        a = 1; b = 1; #10;
        $display("%0t\t%d %d\t  %d  %d  %d   %d   %d   %d   %d", 
                 $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
        
        // End of test
        #10;
        $display("==========================================================");
        $display("Test Complete");
        $display("==========================================================");
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("At time %0t: a=%b, b=%b | AND=%b, OR=%b, NOT=%b, NAND=%b, NOR=%b, XOR=%b, XNOR=%b", 
                 $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
    end
    
endmodule
