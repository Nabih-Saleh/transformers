//======================================================================
//
// LinearLayers.sv
// -------------
// SystemVerilog implementation of the ... block.
// @Nabih Saleh
// @DFKI
//======================================================================

/*       
... processes...

*/
module LinearLayers #(
		parameter int WIDTH = 32 // Bit width of the input and output signals;
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
                  output logic [WIDTH-1 : 0]    output_block
                  );


    // Define weights and bias for the linear layer
    parameter int WEIGHT = 2;
    parameter int BIAS = 1;

    // Local variable to store the dot product result
    logic signed [OUTPUT_SIZE-1:0] dot_product;

    // Perform dot product: output = WEIGHT * input_vector + BIAS
    always_comb begin
        dot_product = WEIGHT * input_block + BIAS;
    end

    // Assign the output_vector to the dot product result
    assign output_block = dot_product;
 
endmodule // LinearLayers

//======================================================================
// EOF LinearLayers.sv
//======================================================================
