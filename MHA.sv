//======================================================================
//
// MHA.sv
// -------------
// SystemVerilog implementation of the Multi-Head-Self-attention block.
// @Nabih Saleh
// @DFKI
//======================================================================

/*

Input (of the block)= Output (of the block) = [n X d_model]; n = #tokens+1, d_model= 192, 384, 768, 1024, ...
Wq = Wk = Wv = [d_model X d_H]
Q = K = V = [n X d_H]
Wo = [d_model X d_model]
Output (of each head) = [n X d_H]; d_H = d_model/#heads


Processes:
1- projection:
      input[n X d_model]
      output: Q,K,V
2- Compatibility matrix:
      input: Q,K
      output: Z[n X n]
3- Softmax+:
      input: Z,V
      output(attention weight): W[n X d_H]
4- Self-Attention:
      input: V,W
      output: H[n, d_H]     



*/

module MHA #(
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
  
 
endmodule // MHA

//======================================================================
// EOF MHA.v
//======================================================================
