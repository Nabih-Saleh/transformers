//======================================================================
//
// ConCat_Heads.sv
// -------------
// SystemVerilog implementation of the ... block.
// @Nabih Saleh
// @DFKI
//======================================================================

/*       
... processes...

*/
module ConCat_Heads #(
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
                  output logic [WIDTH-1 : 0]     output_block
                  );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  logic [3:0] vector_a;
 
endmodule // ConCat_Heads

//======================================================================
// EOF ConCat_Heads.sv
//======================================================================
