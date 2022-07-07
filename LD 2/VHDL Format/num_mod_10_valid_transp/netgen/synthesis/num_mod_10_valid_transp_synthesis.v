////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: num_mod_10_valid_transp_synthesis.v
// /___/   /\     Timestamp: Mon May 20 20:11:44 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim num_mod_10_valid_transp.ngc num_mod_10_valid_transp_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: num_mod_10_valid_transp.ngc
// Output file	: C:\Xilinx92i\num_mod_10_valid_transp\netgen\synthesis\num_mod_10_valid_transp_synthesis.v
// # of Modules	: 1
// Design Name	: num_mod_10_valid_transp
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

module num_mod_10_valid_transp (
  iClear, iE, iClk, oCY, oaQ
);
  input iClear;
  input iE;
  input iClk;
  output oCY;
  output [3 : 0] oaQ;
  wire iClear_IBUF_0;
  wire iE_IBUF_1;
  wire iClk_BUFGP_2;
  wire oCY_OBUF_3;
  wire N31;
  wire N11;
  wire N12;
  wire N13;
  wire [3 : 0] saD;
  wire [3 : 0] saQ;
  FDC saQ_0 (
    .C(iClk_BUFGP_2),
    .CLR(iClear_IBUF_0),
    .D(saD[0]),
    .Q(saQ[0])
  );
  FDC saQ_1 (
    .C(iClk_BUFGP_2),
    .CLR(iClear_IBUF_0),
    .D(saD[1]),
    .Q(saQ[1])
  );
  FDC saQ_2 (
    .C(iClk_BUFGP_2),
    .CLR(iClear_IBUF_0),
    .D(saD[2]),
    .Q(saQ[2])
  );
  FDC saQ_3 (
    .C(iClk_BUFGP_2),
    .CLR(iClear_IBUF_0),
    .D(saD[3]),
    .Q(saQ[3])
  );
  defparam oCY_cmp_eq00001.INIT = 16'h0040;
  LUT4 oCY_cmp_eq00001 (
    .I0(saQ[1]),
    .I1(saQ[0]),
    .I2(saQ[3]),
    .I3(saQ[2]),
    .O(oCY_OBUF_3)
  );
  defparam \saD<0>1 .INIT = 4'h6;
  LUT2 \saD<0>1  (
    .I0(iE_IBUF_1),
    .I1(saQ[0]),
    .O(saD[0])
  );
  defparam \saD<1>1 .INIT = 16'hF00D;
  LUT4 \saD<1>1  (
    .I0(saQ[3]),
    .I1(saQ[2]),
    .I2(saQ[1]),
    .I3(N11),
    .O(saD[1])
  );
  defparam \saD<3>1 .INIT = 16'hAA68;
  LUT4 \saD<3>1  (
    .I0(saQ[3]),
    .I1(saQ[2]),
    .I2(saQ[1]),
    .I3(N31),
    .O(saD[3])
  );
  IBUF iClear_IBUF (
    .I(iClear),
    .O(iClear_IBUF_0)
  );
  IBUF iE_IBUF (
    .I(iE),
    .O(iE_IBUF_1)
  );
  OBUF oCY_OBUF (
    .I(oCY_OBUF_3),
    .O(oCY)
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
  defparam \saD<2>1 .INIT = 16'h6AAA;
  LUT4 \saD<2>1  (
    .I0(saQ[2]),
    .I1(saQ[1]),
    .I2(iE_IBUF_1),
    .I3(saQ[0]),
    .O(saD[2])
  );
  BUFGP iClk_BUFGP (
    .I(iClk),
    .O(iClk_BUFGP_2)
  );
  defparam \saD<1>21 .INIT = 4'h7;
  LUT2_D \saD<1>21  (
    .I0(iE_IBUF_1),
    .I1(saQ[0]),
    .LO(N11),
    .O(N31)
  );
  GND XST_GND (
    .G(N12)
  );
  VCC XST_VCC (
    .P(N13)
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

