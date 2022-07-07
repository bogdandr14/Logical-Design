////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: num_mod_6_sinc_inv_synthesis.v
// /___/   /\     Timestamp: Mon May 20 19:27:57 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim num_mod_6_sinc_inv.ngc num_mod_6_sinc_inv_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: num_mod_6_sinc_inv.ngc
// Output file	: C:\Xilinx92i\num_mod_6_sinc_inv\netgen\synthesis\num_mod_6_sinc_inv_synthesis.v
// # of Modules	: 1
// Design Name	: num_mod_6_sinc_inv
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module num_mod_6_sinc_inv (
  iClear, iClk, oaQ
);
  input iClear;
  input iClk;
  output [2 : 0] oaQ;
  wire iClear_IBUF_0;
  wire iClk_BUFGP_1;
  wire N4;
  wire N5;
  wire [2 : 0] saQ;
  wire [2 : 0] saD;
  FDC saQ_0 (
    .C(iClk_BUFGP_1),
    .CLR(iClear_IBUF_0),
    .D(saD[0]),
    .Q(saQ[0])
  );
  FDC saQ_1 (
    .C(iClk_BUFGP_1),
    .CLR(iClear_IBUF_0),
    .D(saD[1]),
    .Q(saQ[1])
  );
  FDC saQ_2 (
    .C(iClk_BUFGP_1),
    .CLR(iClear_IBUF_0),
    .D(saD[2]),
    .Q(saQ[2])
  );
  defparam \saD<1>1 .INIT = 8'h98;
  LUT3 \saD<1>1  (
    .I0(saQ[0]),
    .I1(saQ[1]),
    .I2(saQ[2]),
    .O(saD[1])
  );
  defparam \saD<2>1 .INIT = 8'hC9;
  LUT3 \saD<2>1  (
    .I0(saQ[0]),
    .I1(saQ[2]),
    .I2(saQ[1]),
    .O(saD[2])
  );
  IBUF iClear_IBUF (
    .I(iClear),
    .O(iClear_IBUF_0)
  );
  OBUF oaQ_2_OBUF (
    .I(saQ[2]),
    .O(oaQ[2])
  );
  OBUF oaQ_1_OBUF (
    .I(saQ[1]),
    .O(oaQ[1])
  );
  OBUF oaQ_0_OBUF (
    .I(saQ[0]),
    .O(oaQ[0])
  );
  BUFGP iClk_BUFGP (
    .I(iClk),
    .O(iClk_BUFGP_1)
  );
  INV \saD<0>1_INV_0  (
    .I(saQ[0]),
    .O(saD[0])
  );
  GND XST_GND (
    .G(N4)
  );
  VCC XST_VCC (
    .P(N5)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

