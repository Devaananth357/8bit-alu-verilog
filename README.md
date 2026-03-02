This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog.
The ALU performs arithmetic and logical operations based on a 3-bit operation select input.
The design is purely combinational and verified using a custom testbench and waveform simulation.


Features:
	•	8-bit input operands
	•	3-bit operation selector
	•	Zero flag output
	•	Fully verified through simulation
	•	Waveform validation using VCD viewer

Supported Operations:
  	•	Addition
	•	Subtraction
	•	AND
	•	XOR
	•   NOT
	•	OR
	•	Shift Right
	•	Shift Right

Verification:
	•	Testbench applies multiple input combinations
	•	Operation select changes every 10ns
	•	Output monitored using $monitor
	•	Waveform generated using $dumpfile and $dumpvars
	•	Results verified against expected arithmetic and logical behavior

How to Simulate:
  Using Icarus Verilog:
    iverilog -o alu_out alu.v alu_tb.v
    vvp alu_out

  This generates a VCD file:
    alu.vcd

  Open with a waveform viewer (e.g., Surfer):
    surfer alu.vcd






  
