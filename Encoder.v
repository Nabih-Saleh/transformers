//======================================================================
//
// Encoder.sv
// -------------
// SystemVerilog implementation of the Encoder block.
// @Nabih Saleh
// @DFKI
//======================================================================

module Encoder #(
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
  
  
  
  
  //----------------------------------------------------------------
  // Module instantiantions.
  //----------------------------------------------------------------
  MHA MHA_inst(
				.input_block(),
				.output_block()
				);
				
  				
  MLP MLP_inst(
				.inputPortName(),
				.outputPortName()
				);
 
 
 
 
 
 
endmodule // Encoder

//======================================================================
// EOF Encoder.v
//======================================================================
