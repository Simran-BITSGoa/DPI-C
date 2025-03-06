module hello_world;

    // Import the C function using DPI
    import "DPI-C" function string get_hello_message();

    initial begin
        // Call the C function and store the result
        string message = get_hello_message();
        
        // Print the message using Verilog construct
        $display("%s", message);
    end

endmodule
