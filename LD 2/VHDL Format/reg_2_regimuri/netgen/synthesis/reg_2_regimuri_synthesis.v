////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: reg_2_regimuri_synthesis.v
// /___/   /\     Timestamp: Mon May 20 15:36:24 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim reg_2_regimuri.ngc reg_2_regimuri_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: reg_2_regimuri.ngc
// Output file	: C:\Xilinx92i\reg_2_regimuri\netgen\synthesis\reg_2_regimuri_synthesis.v
// # of Modules	: 1
// Design Name	: reg_2_regimuri
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

module reg_2_regimuri (
  iSDD, iClk, iSRL, oaQ, iaD
);
  input iSDD;
  input iClk;
  input iSRL;
  output [7 : 0] oaQ;
  input [7 : 0] iaD;
  wire iSDD_IBUF_0;
  wire iClk_BUFGP_1;
  wire iSRL_IBUF_2;
  wire iaD_7_IBUF_3;
  wire iaD_6_IBUF_4;
  wire iaD_5_IBUF_5;
  wire iaD_4_IBUF_6;
  wire iaD_3_IBUF_7;
  wire iaD_2_IBUF_8;
  wire iaD_1_IBUF_9;
  wire iaD_0_IBUF_10;
  wire saQ_7_1_11;
  wire N8;
  wire N9;
  wire [7 : 0] saQ;
  wire [7 : 0] saD;
  FD saQ_0 (
    .C(iClk_BUFGP_1),
    .D(saD[0]),
    .Q(saQ[0])
  );
  FD saQ_1 (
    .C(iClk_BUFGP_1),
    .D(saD[1]),
    .Q(saQ[1])
  );
  FD saQ_2 (
    .C(iClk_BUFGP_1),
    .D(saD[2]),
    .Q(saQ[2])
  );
  FD saQ_3 (
    .C(iClk_BUFGP_1),
    .D(saD[3]),
    .Q(saQ[3])
  );
  FD saQ_4 (
    .C(iClk_BUFGP_1),
    .D(saD[4]),
    .Q(saQ[4])
  );
  FD saQ_5 (
    .C(iClk_BUFGP_1),
    .D(saD[5]),
    .Q(saQ[5])
  );
  FD saQ_6 (
    .C(iClk_BUFGP_1),
    .D(saD[6]),
    .Q(saQ[6])
  );
  FD saQ_7 (
    .C(iClk_BUFGP_1),
    .D(saD[7]),
    .Q(saQ[7])
  );
  defparam \saD<7>1 .INIT = 8'hE4;
  LUT3 \saD<7>1  (
    .I0(iSRL_IBUF_2),
    .I1(iSDD_IBUF_0),
    .I2(iaD_7_IBUF_3),
    .O(saD[7])
  );
  defparam \saD<6>1 .INIT = 8'hB8;
  LUT3 \saD<6>1  (
    .I0(iaD_6_IBUF_4),
    .I1(iSRL_IBUF_2),
    .I2(saQ[7]),
    .O(saD[6])
  );
  defparam \saD<5>1 .INIT = 8'hB8;
  LUT3 \saD<5>1  (
    .I0(iaD_5_IBUF_5),
    .I1(iSRL_IBUF_2),
    .I2(saQ[6]),
    .O(saD[5])
  );
  defparam \saD<4>1 .INIT = 8'hB8;
  LUT3 \saD<4>1  (
    .I0(iaD_4_IBUF_6),
    .I1(iSRL_IBUF_2),
    .I2(saQ[5]),
    .O(saD[4])
  );
  defparam \saD<3>1 .INIT = 8'hB8;
  LUT3 \saD<3>1  (
    .I0(iaD_3_IBUF_7),
    .I1(iSRL_IBUF_2),
    .I2(saQ[4]),
    .O(saD[3])
  );
  defparam \saD<2>1 .INIT = 8'hB8;
  LUT3 \saD<2>1  (
    .I0(iaD_2_IBUF_8),
    .I1(iSRL_IBUF_2),
    .I2(saQ[3]),
    .O(saD[2])
  );
  defparam \saD<1>1 .INIT = 8'hB8;
  LUT3 \saD<1>1  (
    .I0(iaD_1_IBUF_9),
    .I1(iSRL_IBUF_2),
    .I2(saQ[2]),
    .O(saD[1])
  );
  defparam \saD<0>1 .INIT = 8'hB8;
  LUT3 \saD<0>1  (
    .I0(iaD_0_IBUF_10),
    .I1(iSRL_IBUF_2),
    .I2(saQ[1]),
    .O(saD[0])
  );
  IBUF iSDD_IBUF (
    .I(iSDD),
    .O(iSDD_IBUF_0)
  );
  IBUF iSRL_IBUF (
    .I(iSRL),
    .O(iSRL_IBUF_2)
  );
  IBUF iaD_7_IBUF (
    .I(iaD[7]),
    .O(iaD_7_IBUF_3)
  );
  IBUF iaD_6_IBUF (
    .I(iaD[6]),
    .O(iaD_6_IBUF_4)
  );
  IBUF iaD_5_IBUF (
    .I(iaD[5]),
    .O(iaD_5_IBUF_5)
  );
  IBUF iaD_4_IBUF (
    .I(iaD[4]),
    .O(iaD_4_IBUF_6)
  );
  IBUF iaD_3_IBUF (
    .I(iaD[3]),
    .O(iaD_3_IBUF_7)
  );
  IBUF iaD_2_IBUF (
    .I(iaD[2]),
    .O(iaD_2_IBUF_8)
  );
  IBUF iaD_1_IBUF (
    .I(iaD[1]),
    .O(iaD_1_IBUF_9)
  );
  IBUF iaD_0_IBUF (
    .I(iaD[0]),
    .O(iaD_0_IBUF_10)
  );
  OBUF oaQ_7_OBUF (
    .I(saQ_7_1_11),
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
  FD saQ_7_1 (
    .C(iClk_BUFGP_1),
    .D(saD[7]),
    .Q(saQ_7_1_11)
  );
  GND XST_GND (
    .G(N8)
  );
  VCC XST_VCC (
    .P(N9)
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

