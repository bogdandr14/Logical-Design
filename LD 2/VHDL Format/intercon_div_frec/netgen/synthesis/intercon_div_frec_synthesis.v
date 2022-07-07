////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: intercon_div_frec_synthesis.v
// /___/   /\     Timestamp: Mon May 20 21:14:07 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim intercon_div_frec.ngc intercon_div_frec_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: intercon_div_frec.ngc
// Output file	: E:\Facultate\1.2\Proiectare Logica\Lab\intercon_div_frec\netgen\synthesis\intercon_div_frec_synthesis.v
// # of Modules	: 1
// Design Name	: intercon_div_frec
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

module intercon_div_frec (
  iReset, iE, iClk, oCY
);
  input iReset;
  input iE;
  input iClk;
  output oCY;
  wire iReset_IBUF_0;
  wire iE_IBUF_1;
  wire iClk_BUFGP_2;
  wire oCY_OBUF_3;
  wire saQ7_not0001;
  wire saQ4_not0001;
  wire Mcount_saQ7;
  wire Mcount_saQ73;
  wire Mcount_saQ76;
  wire Mcount_saQ3;
  wire Mcount_saQ33;
  wire Mcount_saQ4;
  wire Mcount_saQ43;
  wire N5;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N25;
  wire N27;
  wire N28;
  wire N29;
  wire N30;
  wire N31;
  wire N32;
  wire [1 : 0] saQ3;
  wire [1 : 0] saQ4;
  wire [2 : 0] saQ7;
  FDCE saQ4_0 (
    .C(iClk_BUFGP_2),
    .CE(saQ4_not0001),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ4),
    .Q(saQ4[0])
  );
  FDCE saQ4_1 (
    .C(iClk_BUFGP_2),
    .CE(saQ4_not0001),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ43),
    .Q(saQ4[1])
  );
  FDCE saQ7_0 (
    .C(iClk_BUFGP_2),
    .CE(saQ7_not0001),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ7),
    .Q(saQ7[0])
  );
  FDCE saQ7_1 (
    .C(iClk_BUFGP_2),
    .CE(saQ7_not0001),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ73),
    .Q(saQ7[1])
  );
  FDCE saQ7_2 (
    .C(iClk_BUFGP_2),
    .CE(saQ7_not0001),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ76),
    .Q(saQ7[2])
  );
  FDCE saQ3_0 (
    .C(iClk_BUFGP_2),
    .CE(iE_IBUF_1),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ3),
    .Q(saQ3[0])
  );
  FDCE saQ3_1 (
    .C(iClk_BUFGP_2),
    .CE(iE_IBUF_1),
    .CLR(iReset_IBUF_0),
    .D(Mcount_saQ33),
    .Q(saQ3[1])
  );
  defparam sCY7_and00002.INIT = 16'h2000;
  LUT4 sCY7_and00002 (
    .I0(saQ7[1]),
    .I1(saQ7[0]),
    .I2(N5),
    .I3(saQ7[2]),
    .O(oCY_OBUF_3)
  );
  defparam \Mcount_saQ4_xor<1>11 .INIT = 4'h6;
  LUT2 \Mcount_saQ4_xor<1>11  (
    .I0(saQ4[0]),
    .I1(saQ4[1]),
    .O(Mcount_saQ43)
  );
  defparam \Mcount_saQ3_xor<0>11 .INIT = 8'h15;
  LUT3 \Mcount_saQ3_xor<0>11  (
    .I0(saQ3[0]),
    .I1(iE_IBUF_1),
    .I2(saQ3[1]),
    .O(Mcount_saQ3)
  );
  defparam \Mcount_saQ3_xor<1>11 .INIT = 8'h46;
  LUT3 \Mcount_saQ3_xor<1>11  (
    .I0(saQ3[1]),
    .I1(saQ3[0]),
    .I2(iE_IBUF_1),
    .O(Mcount_saQ33)
  );
  defparam saQ4_not00011.INIT = 8'h40;
  LUT3 saQ4_not00011 (
    .I0(saQ3[0]),
    .I1(saQ3[1]),
    .I2(iE_IBUF_1),
    .O(saQ4_not0001)
  );
  defparam saQ7_not00011.INIT = 4'h8;
  LUT2 saQ7_not00011 (
    .I0(iE_IBUF_1),
    .I1(N29),
    .O(saQ7_not0001)
  );
  IBUF iReset_IBUF (
    .I(iReset),
    .O(iReset_IBUF_0)
  );
  IBUF iE_IBUF (
    .I(iE),
    .O(iE_IBUF_1)
  );
  OBUF oCY_OBUF (
    .I(oCY_OBUF_3),
    .O(oCY)
  );
  defparam \Mcount_saQ7_xor<0>11 .INIT = 16'h5515;
  LUT4 \Mcount_saQ7_xor<0>11  (
    .I0(saQ7[0]),
    .I1(saQ4[1]),
    .I2(N20),
    .I3(N18),
    .O(Mcount_saQ7)
  );
  defparam \Mcount_saQ7_xor<1>11 .INIT = 16'h6266;
  LUT4 \Mcount_saQ7_xor<1>11  (
    .I0(saQ7[0]),
    .I1(saQ7[1]),
    .I2(N18),
    .I3(N22),
    .O(Mcount_saQ73)
  );
  defparam \Mcount_saQ7_xor<2>11_SW3 .INIT = 8'h95;
  LUT3 \Mcount_saQ7_xor<2>11_SW3  (
    .I0(saQ7[2]),
    .I1(saQ7[1]),
    .I2(saQ7[0]),
    .O(N24)
  );
  defparam \Mcount_saQ7_xor<2>12 .INIT = 16'h2373;
  LUT4 \Mcount_saQ7_xor<2>12  (
    .I0(N30),
    .I1(N24),
    .I2(saQ4[1]),
    .I3(N25),
    .O(Mcount_saQ76)
  );
  MUXF5 \Mcount_saQ7_xor<2>11_SW4  (
    .I0(N27),
    .I1(N28),
    .S(saQ7[2]),
    .O(N25)
  );
  defparam \Mcount_saQ7_xor<2>11_SW4_F .INIT = 4'h7;
  LUT2 \Mcount_saQ7_xor<2>11_SW4_F  (
    .I0(saQ7[1]),
    .I1(saQ7[0]),
    .O(N27)
  );
  defparam \Mcount_saQ7_xor<2>11_SW4_G .INIT = 16'hA888;
  LUT4 \Mcount_saQ7_xor<2>11_SW4_G  (
    .I0(saQ7[1]),
    .I1(saQ7[0]),
    .I2(saQ4[0]),
    .I3(saQ3[1]),
    .O(N28)
  );
  BUFGP iClk_BUFGP (
    .I(iClk),
    .O(iClk_BUFGP_2)
  );
  INV \Mcount_saQ4_xor<0>11_INV_0  (
    .I(saQ4[0]),
    .O(Mcount_saQ4)
  );
  defparam sCY7_and000011.INIT = 16'h2000;
  LUT4_D sCY7_and000011 (
    .I0(saQ4[1]),
    .I1(saQ3[0]),
    .I2(saQ3[1]),
    .I3(saQ4[0]),
    .LO(N29),
    .O(N5)
  );
  defparam \Mcount_saQ7_xor<2>11_SW0 .INIT = 4'hD;
  LUT2_D \Mcount_saQ7_xor<2>11_SW0  (
    .I0(iE_IBUF_1),
    .I1(saQ3[0]),
    .LO(N30),
    .O(N18)
  );
  defparam \Mcount_saQ7_xor<2>11_SW1 .INIT = 16'h8000;
  LUT4_L \Mcount_saQ7_xor<2>11_SW1  (
    .I0(saQ4[0]),
    .I1(saQ3[1]),
    .I2(saQ7[2]),
    .I3(saQ7[1]),
    .LO(N20)
  );
  defparam \Mcount_saQ7_xor<2>11_SW2 .INIT = 16'h8000;
  LUT4_L \Mcount_saQ7_xor<2>11_SW2  (
    .I0(saQ4[1]),
    .I1(saQ4[0]),
    .I2(saQ3[1]),
    .I3(saQ7[2]),
    .LO(N22)
  );
  GND XST_GND (
    .G(N31)
  );
  VCC XST_VCC (
    .P(N32)
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

