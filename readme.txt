Hello World with SystemVerilog and DPI
This project demonstrates how to use the Direct Programming Interface (DPI) in SystemVerilog to call a C function that returns the string "Hello, World!" and print it using a Verilog construct.

Files
hello.c: Contains the C function that returns the "Hello, World!" string.
hello.sv: Contains the SystemVerilog module that calls the C function and prints the message.
Steps to Compile and Run
Step 1: Write the C Code
Create a file named hello.c.

Step 2: Write the SystemVerilog Code
Create a file named hello.sv.

Step 3: Compile the C Code
Use the following command to compile the C code into a shared object file for a 32-bit architecture:

gcc -m32 -fPIC -shared -o hello.so hello.c
Step 4: Verify the Shared Object File
Ensure that the hello.so file is created in the current directory:

ls -l hello.so
Step 5: use vlog hello.sv for complilling
Step 6: Run the Simulation
Use ModelSim (or QuestaSim) to run the simulation with the following command:

vsim -c -do "run -all" hello_world -sv_lib ./hello
Expected Output
The simulation should display the following message in the terminal output:

Hello, World!
