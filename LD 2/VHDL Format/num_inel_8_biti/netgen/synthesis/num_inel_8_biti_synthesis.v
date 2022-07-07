////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: num_inel_8_biti_synthesis.v
// /___/   /\     Timestamp: Mon May 20 19:48:12 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim num_inel_8_biti.ngc num_inel_8_biti_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: num_inel_8_biti.ngc
// Output file	: C:\Xilinx92i\num_inel_8_biti\netgen\synthesis\num_inel_8_biti_synthesis.v
// # of Modules	: 1
// Design Name	: num_inel_8_biti
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

module num_inel_8_biti (
  iINIT, iClk, oaQ
);
  input iINIT;
  input iClk;
  output [7 : 0] oaQ;
  wire iINIT_IBUF_0;
  wire iClk_BUFGP_1;
  wire N4;
  wire N5;
  wire [7 : 0] saQ;
  FDP saQ_7 (
    .C(iClk_BUFGP_1),
    .D(saQ[0]),
    .PRE(iINIT_IBUF_0),
    .Q(saQ[7])
  );
  FDC saQ_6 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[7]),
    .Q(saQ[6])
  );
  FDC saQ_5 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[6]),
    .Q(saQ[5])
  );
  FDC saQ_4 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[5]),
    .Q(saQ[4])
  );
  FDC saQ_3 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[4]),
    .Q(saQ[3])
  );
  FDC saQ_2 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[3]),
    .Q(saQ[2])
  );
  FDC saQ_1 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[2]),
    .Q(saQ[1])
  );
  FDC saQ_0 (
    .C(iClk_BUFGP_1),
    .CLR(iINIT_IBUF_0),
    .D(saQ[1]),
    .Q(saQ[0])
  );
  IBUF iINIT_IBUF (
    .I(iINIT),
    .O(iINIT_IBUF_0)
  );
  OBUF oaQ_7_OBUF (
    .I(saQ[7]),
    .O(oaQ[7])
  );
  OBUF oaQ_6_OBUF (
    .I(saQ[6]),
    .O(oaQ[6])
  );
  OBUF oaQ_5_OBUF (
    .I(saQ[5]),
    .O(oaQ[5])
  );
  OBUF oaQ_4_OBUF (
    .I(saQ[4]),
    .O(oaQ[4])
  );
  OBUF oaQ_3_OBUF (
    .I(saQ[3]),
    .O(oaQ[3])
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

