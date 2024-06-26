// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0


module prim_generic_clock_buf #(
  parameter bit NoFpgaBuf = 1'b0 // serves no function in generic
) (
  input clk_i,
  output logic clk_o
);

  logic inv;
  assign inv = ~clk_i;
  assign clk_o = ~inv;

endmodule // prim_generic_clock_buf
