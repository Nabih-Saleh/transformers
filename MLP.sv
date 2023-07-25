//======================================================================
//
// MLP.sv
// -------------
// SystemVerilog implementation of the Multi-Layer Perceptron (MLP) block.
// @Nabih Saleh
// @DFKI
//======================================================================

/*

Input (of the block)= Output (of the block) = [n X d_model]; n = #tokens+1, d_model= 192, 384, 512, 768, 1024, ...
Hidden units = [d_model * 4]

Processes:
1- 1st Linear layer(projection):
      Y1= W1 * X + b1
2- Activation(ReLU/GeLU):
      A = ReLU(Y1)
3- 2nd Linear layer(projection):
      Y2= A * W2 + b2            


*/
module MLP(
		parameter int WIDTH = 32 // Bit width of the input and output signals
)
			(
                   // Clock and reset.
                  input logic            clk,
                  input logic            reset_n,

                   // Control.
                  input logic            init,
			output logic		ready,

                   // Data ports.
			input logic  [WIDTH-1 : 0]	input_block,		 
                  output logic [WIDTH-1 : 0]     output_block
                  );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  logic [3:0] vector_a;
 
endmodule // MLP

//======================================================================
// EOF MLP.v
//======================================================================
