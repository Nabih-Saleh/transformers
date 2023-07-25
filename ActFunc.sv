//======================================================================
//
// ActFunc.sv
// -------------
// SystemVerilog implementation of the ... block.
// @Nabih Saleh
// @DFKI
//======================================================================

/*       
... processes...

*/
module ActFunc #(
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
			input logic  [INPUT_SIZE-1 : 0]	input_block,		 
                  output logic [INPUT_SIZE-1 : 0]     output_block
                  );


    // ReLU activation function: output = max(0, input_signal)
    always_comb begin
        if (input_signal >= 0)
            output_signal = input_signal;
        else
            output_signal = 0;
    end
 
endmodule // ActFunc

//======================================================================
// EOF ActFunc.sv
//======================================================================
