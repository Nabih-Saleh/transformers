//======================================================================
//
// MHA.sv
// -------------
// SystemVerilog implementation of the Multi-Head-Self-attention block.
// @Nabih Saleh
// @DFKI
//======================================================================

module MHA #(
					parameter parameter_name = 8;
			)
			(
                   // Clock and reset.
                   input logic            clk,
                   input logic            reset_n,

                   // Control.
                   input logic            init,
				   output logic			  ready,

                   // Data ports.
				   input logic	[parameter_name-1 : 0]	input_block,		 
                   output logic [parameter_name-1 : 0]  output_block,	
                  );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  logic [3:0] vector_a;
  
 
endmodule // MHA

//======================================================================
// EOF MHA.v
//======================================================================
