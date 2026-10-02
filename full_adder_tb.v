`timescale 1ns / 1ps

module full_adder_tb;

    // Inputs 
    reg a;
    reg b;
    reg cin;

    // Outputs 
    wire sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 0; cin = 0;
        #20; 
        
        // Test Case 1: 0 + 0 + 1 => Sum=1, Cout=0
        a = 0; b = 0; cin = 1;
        #20;
        
        // Test Case 2: 0 + 1 + 0 => Sum=1, Cout=0
        a = 0; b = 1; cin = 0;
        #20;

        // Test Case 3: 0 + 1 + 1 => Sum=0, Cout=1
        a = 0; b = 1; cin = 1;
        #20;

        // Test Case 4: 1 + 0 + 0 => Sum=1, Cout=0
        a = 1; b = 0; cin = 0;
        #20;

        // Test Case 5: 1 + 0 + 1 => Sum=0, Cout=1
        a = 1; b = 0; cin = 1;
        #20;

        // Test Case 6: 1 + 1 + 0 => Sum=0, Cout=1
        a = 1; b = 1; cin = 0;
        #20;

        // Test Case 7: 1 + 1 + 1 => Sum=1, Cout=1
        a = 1; b = 1; cin = 1;
        #20;
        
        $finish; 
    end
      
endmodule