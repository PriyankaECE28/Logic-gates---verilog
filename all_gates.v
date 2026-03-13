// 1. AND Gate
module and_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = a & b
);
    assign c = a & b;
endmodule

// 2. OR Gate
module or_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = a | b
);
    assign c = a | b;
endmodule

// 3. NOT Gate (Inverter)
module not_gate (
    input a,      // Input a
    output c      // Output c = ~a
);
    assign c = ~a;
endmodule

// 4. NAND Gate
module nand_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = ~(a & b)
);
    assign c = ~(a & b);
endmodule

// 5. NOR Gate
module nor_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = ~(a | b)
);
    assign c = ~(a | b);
endmodule

// 6. XOR Gate (Exclusive OR)
module xor_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = a ^ b
);
    assign c = a ^ b;
endmodule

// 7. XNOR Gate (Exclusive NOR)
module xnor_gate (
    input a,      // Input a
    input b,      // Input b
    output c      // Output c = ~(a ^ b)
);
    assign c = ~(a ^ b);
endmodule
