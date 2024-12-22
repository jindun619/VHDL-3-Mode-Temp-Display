// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Dec 22 22:56:26 2024
//
// Verilog Description of module TemperatureSensor
//

module TemperatureSensor (clk, rst, mode_key, beep, DQ, din, sck, 
            rck);   // c:/labcode6/impl1/source/top.vhd(11[9:26])
    input clk;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    input rst;   // c:/labcode6/impl1/source/top.vhd(14[2:5])
    input mode_key;   // c:/labcode6/impl1/source/top.vhd(16[2:10])
    output beep;   // c:/labcode6/impl1/source/top.vhd(18[2:6])
    inout DQ;   // c:/labcode6/impl1/source/top.vhd(20[2:4])
    output din;   // c:/labcode6/impl1/source/top.vhd(22[2:5])
    output sck;   // c:/labcode6/impl1/source/top.vhd(23[2:5])
    output rck;   // c:/labcode6/impl1/source/top.vhd(24[2:5])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    
    wire rst_c, mode_key_c, beep_c, din_c, sck_c, rck_c;
    wire [15:0]sample;   // c:/labcode6/impl1/source/top.vhd(32[9:15])
    wire [31:0]\tempC[4] ;   // c:/labcode6/impl1/source/top.vhd(33[9:14])
    
    wire n13921;
    wire [31:0]\tempC[3] ;   // c:/labcode6/impl1/source/top.vhd(33[9:14])
    wire [31:0]\tempC[2] ;   // c:/labcode6/impl1/source/top.vhd(33[9:14])
    wire [31:0]\tempC[1] ;   // c:/labcode6/impl1/source/top.vhd(33[9:14])
    
    wire n13922;
    wire [31:0]\tempC[0] ;   // c:/labcode6/impl1/source/top.vhd(33[9:14])
    
    wire n13929;
    wire [31:0]\tempF[4] ;   // c:/labcode6/impl1/source/top.vhd(34[9:14])
    wire [31:0]\tempF[3] ;   // c:/labcode6/impl1/source/top.vhd(34[9:14])
    
    wire n13923;
    wire [31:0]\tempF[2] ;   // c:/labcode6/impl1/source/top.vhd(34[9:14])
    
    wire n13930;
    wire [31:0]\tempF[1] ;   // c:/labcode6/impl1/source/top.vhd(34[9:14])
    wire [31:0]\tempF[0] ;   // c:/labcode6/impl1/source/top.vhd(34[9:14])
    wire [1:0]mode;   // c:/labcode6/impl1/source/top.vhd(35[9:13])
    
    wire en;
    wire [31:0]\temp[1] ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    wire [31:0]\temp[2] ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    wire [31:0]\temp[3] ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    wire [95:0]linecode;   // c:/labcode6/impl1/source/top.vhd(42[9:17])
    wire [31:0]\temp[4] ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    
    wire VCC_net, n20917, n9480, n13925, n13914, n19876, n20561, 
        DQ_N_215, GND_net, n9489, n9485, n13932, n13934, n9487;
    wire [3:0]d3;   // c:/labcode6/impl1/source/toc.vhd(58[14:16])
    
    wire n15, n9479, n13927, n13917, n9477, n9496, n9495, n9494, 
        n9497, n13928, n9499, n9500, n13915, n13920, n9493, n9492;
    wire [31:0]Fahrenheit;   // c:/labcode6/impl1/source/tof.vhd(19[8:18])
    
    wire n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
        n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
        n45, n46, n47, n48, n49, n50, n80, n81, n82, n83, 
        n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, 
        n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, 
        n173, n174, n175, n176, n177, n178, n179, n180, n181, 
        n182, n183, n184, n185, n186, n187, n188, n189, n259, 
        n260, n261, n262, n263, n264, n265, n268, n269, n270, 
        n271, n339, n340, n341, n342, n343, n344, n345, n346, 
        n347, n348, n349, n20160, n9490, clk_c_enable_272, n13919, 
        n13926, n13918, n15501, n15499, n9498, n6561, n6560, n6559, 
        n6558, n6486, n6485, n6484, n6483, n6410, n6409, n6408, 
        n6336, n6335, n6334, n6333, n6295, n6294, n6293, n6292, 
        n9482, n9481, n9483;
    wire [31:0]\temp[0] ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    
    wire n13924, n13933, n9486, n13931, n9484, n20504, n20918, 
        n9491;
    wire [7:0]linecode_7__N_2688;
    wire [4:0]linecode_87__N_2650;
    
    wire kmodstate, kmodstate_ls;
    wire [31:0]en_N_3200;
    
    wire n6806, DQ_out, n9488, n1842, n1843, n1845, n1846, n9478, 
        n13916, n30_adj_3552, n15_adj_3553, n15_adj_3554, n20926, 
        clk_c_enable_105, n19952, n30_adj_3555, n20923, clk_c_enable_151, 
        n15_adj_3556, n11, n12452, n12959, n12953, n11766, n12965, 
        n12964, n12963, n12446, n12455, n12952, n12958, n12957, 
        n12447, n12951, n12956, n12454, n12962, n12955, n12453, 
        n12961, n12954, n12960, n12449, n12451, n12450, n12448, 
        n19748, n11765, n11771, n11770, n11769, n11768, n11767, 
        n20928, n20623, n6, n20135;
    
    IB mode_key_pad (.I(mode_key), .O(mode_key_c));   // c:/labcode6/impl1/source/top.vhd(16[2:10])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/labcode6/impl1/source/top.vhd(14[2:5])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    GSR GSR_INST (.GSR(rst_c));
    LUT4 i1_2_lut_rep_58 (.A(n19748), .B(clk_c_enable_272), .Z(clk_c_enable_105)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_58.init = 16'hdddd;
    LUT4 i2888_2_lut_3_lut (.A(n19748), .B(clk_c_enable_272), .C(d3[0]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (C))) */ ;
    defparam i2888_2_lut_3_lut.init = 16'h2d2d;
    OB rck_pad (.I(rck_c), .O(rck));   // c:/labcode6/impl1/source/top.vhd(24[2:5])
    OB sck_pad (.I(sck_c), .O(sck));   // c:/labcode6/impl1/source/top.vhd(23[2:5])
    OB din_pad (.I(din_c), .O(din));   // c:/labcode6/impl1/source/top.vhd(22[2:5])
    OB beep_pad (.I(beep_c), .O(beep));   // c:/labcode6/impl1/source/top.vhd(18[2:6])
    BB DQ_pad (.I(DQ_N_215), .T(n6806), .B(DQ), .O(DQ_out));   // c:/labcode6/impl1/source/temptrans.vhd(46[2] 131[14])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    dataTo595 DT (.clk_c(clk_c), .n1842(n1842), .n30(n30_adj_3555), .\temp[0][4] (\temp[0] [4]), 
            .GND_net(GND_net), .sck_c(sck_c), .n30_adj_11(n30_adj_3552), 
            .\temp[1][4] (\temp[1] [4]), .din_c(din_c), .n1843(n1843), 
            .n1845(n1845), .\temp[1][0] (\temp[1] [0]), .\temp[1][2] (\temp[1] [2]), 
            .\temp[1][1] (\temp[1] [1]), .\temp[1][3] (\temp[1] [3]), .n1846(n1846), 
            .\temp[2][0] (\temp[2] [0]), .\temp[2][3] (\temp[2] [3]), .\temp[2][1] (\temp[2] [1]), 
            .\temp[2][2] (\temp[2] [2]), .mode({mode}), .\temp[4][0] (\temp[4] [0]), 
            .\temp[4][3] (\temp[4] [3]), .\temp[4][2] (\temp[4] [2]), .\temp[4][1] (\temp[4] [1]), 
            .\temp[0][1] (\temp[0] [1]), .\temp[0][3] (\temp[0] [3]), .\temp[0][0] (\temp[0] [0]), 
            .\temp[0][2] (\temp[0] [2]), .\temp[3][0] (\temp[3] [0]), .\temp[3][3] (\temp[3] [3]), 
            .\temp[3][1] (\temp[3] [1]), .\temp[3][2] (\temp[3] [2]), .\linecode_7__N_2688[3] (linecode_7__N_2688[3]), 
            .n20561(n20561), .\linecode[71] (linecode[71]), .n6(n6), .\linecode[69] (linecode[69]), 
            .n19876(n19876), .n20135(n20135), .\linecode[16] (linecode[16]), 
            .\linecode[32] (linecode[32]), .rst_c(rst_c), .rck_c(rck_c), 
            .n20918(n20918), .\linecode[39] (linecode[39]), .n15(n15_adj_3554), 
            .n15501(n15501), .n19952(n19952), .n20917(n20917), .\linecode[23] (linecode[23]), 
            .n15_adj_12(n15), .n15499(n15499), .n20926(n20926), .n20160(n20160), 
            .n20504(n20504), .n15_adj_13(n15_adj_3553), .n15_adj_14(n15_adj_3556), 
            .n20623(n20623), .n20923(n20923));   // c:/labcode6/impl1/source/top.vhd(140[5:14])
    LUT4 m1_lut (.Z(n20928)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VLO i1 (.Z(GND_net));
    toF CF (.clk_c(clk_c), .GND_net(GND_net), .n28(n28), .n27(n27), 
        .n81(n81), .n80(n80), .n83(n83), .n82(n82), .\tempC[3][0] (\tempC[3] [0]), 
        .\tempC[3][2] (\tempC[3] [2]), .\tempC[3][3] (\tempC[3] [3]), .\tempC[3][1] (\tempC[3] [1]), 
        .n85(n85), .n84(n84), .n87(n87), .n86(n86), .n30(n30), .n29(n29), 
        .n89(n89), .n88(n88), .n32(n32), .n31(n31), .n34(n34), .n33(n33), 
        .n36(n36), .n35(n35), .n91(n91), .n90(n90), .n38(n38), .n37(n37), 
        .n40(n40), .n39(n39), .n42(n42), .n41(n41), .n44(n44), .n43(n43), 
        .\tempF[4][0] (\tempF[4] [0]), .n46(n46), .n45(n45), .\tempF[3][0] (\tempF[3] [0]), 
        .\tempF[2][0] (\tempF[2] [0]), .\tempF[1][0] (\tempF[1] [0]), .\tempF[0][0] (\tempF[0] [0]), 
        .\tempC[4][0] (\tempC[4] [0]), .\tempC[4][2] (\tempC[4] [2]), .\tempC[4][3] (\tempC[4] [3]), 
        .\tempC[4][1] (\tempC[4] [1]), .n93(n93), .n92(n92), .n95(n95), 
        .n94(n94), .n48(n48), .n47(n47), .n50(n50), .n49(n49), .n259(n259), 
        .n261(n261), .n260(n260), .\Fahrenheit[2] (Fahrenheit[2]), .n103(n103), 
        .n9476({n9477, n9478, n9479, n9480, n9481, n9482, n9483, 
        n9484, n9485, n9486, n9487, n9488, n9489, n9490, n9491, 
        n9492, n9493, n9494, n9495, n9496, n9497, n9498, n9499, 
        n9500}), .\tempC[2][0] (\tempC[2] [0]), .\tempC[2][2] (\tempC[2] [2]), 
        .n12950({n12951, n12952, n12953, n12954, n12955, n12956, 
        n12957, n12958, n12959, n12960, n12961, n12962, n12963, 
        n12964}), .n13913({n13914, n13915, n13916, n13917, n13918, 
        n13919, n13920, n13921, n13922, n13923, n13924, n13925, 
        n13926, n13927, n13928, n13929, n13930, n13931, n13932, 
        n13933}), .\tempC[0][0] (\tempC[0] [0]), .\tempC[0][2] (\tempC[0] [2]), 
        .n12445({n12446, n12447, n12448, n12449, n12450, n12451, 
        n12452, n12453, n12454}), .\tempC[1][0] (\tempC[1] [0]), .\tempC[1][1] (\tempC[1] [1]), 
        .n11764({n11765, n11766, n11767, n11768, n11769, n11770}), 
        .n263(n263), .n262(n262), .n265(n265), .n264(n264), .\tempC[0][1] (\tempC[0] [1]), 
        .\tempC[0][3] (\tempC[0] [3]), .n97(n97), .n96(n96), .\tempC[1][2] (\tempC[1] [2]), 
        .\tempC[1][3] (\tempC[1] [3]), .\tempC[2][1] (\tempC[2] [1]), .n271(n271), 
        .n99(n99), .n98(n98), .n101(n101), .n100(n100), .n102(n102), 
        .n269(n269), .n268(n268), .n270(n270), .n339(n339), .n341(n341), 
        .n340(n340), .n343(n343), .n342(n342), .\tempF[4][1] (\tempF[4] [1]), 
        .n345(n345), .n344(n344), .\tempF[4][2] (\tempF[4] [2]), .\tempF[4][3] (\tempF[4] [3]), 
        .\tempF[3][1] (\tempF[3] [1]), .\tempF[3][2] (\tempF[3] [2]), .\tempF[3][3] (\tempF[3] [3]), 
        .\tempF[2][1] (\tempF[2] [1]), .\tempF[2][2] (\tempF[2] [2]), .\tempF[2][3] (\tempF[2] [3]), 
        .\tempF[1][1] (\tempF[1] [1]), .\tempF[1][2] (\tempF[1] [2]), .\tempF[1][3] (\tempF[1] [3]), 
        .\tempF[0][1] (\tempF[0] [1]), .\tempF[0][2] (\tempF[0] [2]), .\tempF[0][3] (\tempF[0] [3]), 
        .n349(n349), .n347(n347), .n346(n346), .n348(n348), .n173(n173), 
        .n175(n175), .n174(n174), .n177(n177), .n176(n176), .n179(n179), 
        .n178(n178), .n189(n189), .n181(n181), .n180(n180), .n183(n183), 
        .n182(n182), .n185(n185), .n184(n184), .n187(n187), .n186(n186), 
        .n188(n188), .n11771(n11771), .n12455(n12455), .n13934(n13934), 
        .\tempC[2][3] (\tempC[2] [3]), .n12965(n12965), .n26(n26), .n25(n25));   // c:/labcode6/impl1/source/top.vhd(134[5:8])
    encode DE (.\temp[4][3] (\temp[4] [3]), .\temp[0][0] (\temp[0] [0]), 
           .\temp[1][0] (\temp[1] [0]), .\temp[2][0] (\temp[2] [0]), .\temp[3][0] (\temp[3] [0]), 
           .\temp[4][0] (\temp[4] [0]), .\temp[0][1] (\temp[0] [1]), .\temp[0][2] (\temp[0] [2]), 
           .\temp[0][3] (\temp[0] [3]), .\temp[0][4] (\temp[0] [4]), .\temp[1][1] (\temp[1] [1]), 
           .\temp[1][2] (\temp[1] [2]), .\temp[1][3] (\temp[1] [3]), .\temp[1][4] (\temp[1] [4]), 
           .\temp[2][1] (\temp[2] [1]), .\temp[2][2] (\temp[2] [2]), .\temp[2][3] (\temp[2] [3]), 
           .\temp[3][1] (\temp[3] [1]), .\temp[3][2] (\temp[3] [2]), .\temp[3][3] (\temp[3] [3]), 
           .\temp[4][1] (\temp[4] [1]), .\temp[4][2] (\temp[4] [2]), .n20504(n20504), 
           .n15(n15), .n9({n6292, n6293, n6294, n6295}), .n15_adj_4(n15_adj_3554), 
           .n15_adj_5(n15_adj_3553), .mode({mode}), .n9_adj_8({n6558, 
           n6559, n6560, n6561}), .\en_N_3200[0] (en_N_3200[0]), .\tempF[3][0] (\tempF[3] [0]), 
           .n9_adj_9({n6483, n6484, n6485, n6486}), .\tempF[2][0] (\tempF[2] [0]), 
           .n20135(n20135), .n6408(n6408), .n15_adj_6(n15_adj_3556), .n30(n30_adj_3555), 
           .n1843(n1843), .\linecode[69] (linecode[69]), .n20160(n20160), 
           .n6410(n6410), .n6409(n6409), .\tempF[3][3] (\tempF[3] [3]), 
           .n20561(n20561), .n1842(n1842), .n20623(n20623), .n6(n6), 
           .\tempF[4][3] (\tempF[4] [3]), .\tempF[0][1] (\tempF[0] [1]), 
           .n9_adj_10({n6333, n6334, n6335, n6336}), .\tempF[3][2] (\tempF[3] [2]), 
           .\tempF[2][2] (\tempF[2] [2]), .\tempF[2][3] (\tempF[2] [3]), 
           .\tempF[1][3] (\tempF[1] [3]), .\tempF[1][1] (\tempF[1] [1]), 
           .\tempF[2][1] (\tempF[2] [1]), .\linecode_7__N_2688[3] (linecode_7__N_2688[3]), 
           .\tempF[1][2] (\tempF[1] [2]), .\tempF[0][3] (\tempF[0] [3]), 
           .\tempF[4][2] (\tempF[4] [2]), .\tempF[4][1] (\tempF[4] [1]), 
           .\tempF[0][2] (\tempF[0] [2]), .\tempF[4][0] (\tempF[4] [0]), 
           .\tempF[0][0] (\tempF[0] [0]), .\tempF[3][1] (\tempF[3] [1]), 
           .\tempF[1][0] (\tempF[1] [0]), .kmodstate(kmodstate), .kmodstate_ls(kmodstate_ls), 
           .clk_c_enable_151(clk_c_enable_151), .\linecode[16] (linecode[16]), 
           .n19876(n19876), .\linecode[32] (linecode[32]), .n1846(n1846), 
           .n1845(n1845), .n19952(n19952), .n30_adj_7(n30_adj_3552), .\linecode[39] (linecode[39]), 
           .\linecode[23] (linecode[23]), .\linecode_87__N_2650[1] (linecode_87__N_2650[1]), 
           .n20917(n20917), .n20918(n20918), .n20923(n20923), .n15501(n15501), 
           .n20926(n20926), .n15499(n15499), .\linecode[71] (linecode[71]));   // c:/labcode6/impl1/source/top.vhd(137[5:11])
    B20trans CB (.\sample[2] (sample[2]), .DQ_N_215(DQ_N_215), .DQ_out(DQ_out), 
            .\sample[3] (sample[3]), .\sample[4] (sample[4]), .\sample[5] (sample[5]), 
            .\sample[1] (sample[1]), .\sample[6] (sample[6]), .clk_c(clk_c), 
            .\sample[7] (sample[7]), .\sample[8] (sample[8]), .\sample[9] (sample[9]), 
            .\sample[10] (sample[10]), .n6806(n6806), .n20928(n20928), 
            .\sample[0] (sample[0]), .GND_net(GND_net));   // c:/labcode6/impl1/source/top.vhd(128[5:13])
    pwm BC (.GND_net(GND_net), .clk_c(clk_c), .en(en), .beep_c(beep_c));   // c:/labcode6/impl1/source/top.vhd(146[5:8])
    modtrans MC (.mode({mode}), .clk_c(clk_c), .clk_c_enable_151(clk_c_enable_151), 
            .\linecode[16] (linecode[16]), .kmodstate_ls(kmodstate_ls), 
            .kmodstate(kmodstate), .n9({n6558, n6559, n6560, n6561}), 
            .n6410(n6410), .\linecode_87__N_2650[1] (linecode_87__N_2650[1]), 
            .GND_net(GND_net), .n6408(n6408), .n6409(n6409), .en(en), 
            .\en_N_3200[0] (en_N_3200[0]), .mode_key_c(mode_key_c));   // c:/labcode6/impl1/source/top.vhd(143[5:13])
    toC CC (.clk_c(clk_c), .\sample[1] (sample[1]), .\sample[2] (sample[2]), 
        .\sample[3] (sample[3]), .\sample[4] (sample[4]), .\sample[5] (sample[5]), 
        .\sample[6] (sample[6]), .\sample[7] (sample[7]), .\sample[8] (sample[8]), 
        .\sample[9] (sample[9]), .\sample[10] (sample[10]), .d3({Open_0, 
        Open_1, Open_2, d3[0]}), .n11(n11), .clk_c_enable_272(clk_c_enable_272), 
        .\sample[0] (sample[0]), .GND_net(GND_net), .\tempC[4][0] (\tempC[4] [0]), 
        .n9({n6558, n6559, n6560, n6561}), .\tempC[2][0] (\tempC[2] [0]), 
        .n9_adj_1({n6483, n6484, n6485, n6486}), .\tempC[3][0] (\tempC[3] [0]), 
        .\en_N_3200[0] (en_N_3200[0]), .\tempC[0][0] (\tempC[0] [0]), .n9_adj_2({n6333, 
        n6334, n6335, n6336}), .\tempC[1][0] (\tempC[1] [0]), .n9_adj_3({n6292, 
        n6293, n6294, n6295}), .clk_c_enable_105(clk_c_enable_105), 
        .n19748(n19748), .\tempC[4][1] (\tempC[4] [1]), .\tempC[4][2] (\tempC[4] [2]), 
        .\tempC[4][3] (\tempC[4] [3]), .n50(n50), .n49(n49), .n48(n48), 
        .n9476({n9477, n9478, n9479, n9480, n9481, n9482, n9483, 
        n9484, n9485, n9486, n9487, n9488, n9489, n9490, n9491, 
        n9492, n9493, n9494, n9495, n9496, n9497, n9498, n9499, 
        n9500}), .n47(n47), .n46(n46), .n45(n45), .n44(n44), .n43(n43), 
        .n42(n42), .n41(n41), .n40(n40), .n39(n39), .n38(n38), .n37(n37), 
        .n36(n36), .n35(n35), .n34(n34), .n33(n33), .n32(n32), .n31(n31), 
        .n30(n30), .n29(n29), .n28(n28), .n27(n27), .n26(n26), .n25(n25), 
        .\tempC[2][1] (\tempC[2] [1]), .\tempC[2][2] (\tempC[2] [2]), .\tempC[2][3] (\tempC[2] [3]), 
        .n189(n189), .n188(n188), .n187(n187), .n12950({n12951, n12952, 
        n12953, n12954, n12955, n12956, n12957, n12958, n12959, 
        n12960, n12961, n12962, n12963, n12964}), .n186(n186), .n185(n185), 
        .n184(n184), .n183(n183), .n182(n182), .n181(n181), .n180(n180), 
        .n179(n179), .n178(n178), .n177(n177), .n176(n176), .n175(n175), 
        .n174(n174), .n173(n173), .n12965(n12965), .\tempC[3][1] (\tempC[3] [1]), 
        .\tempC[3][2] (\tempC[3] [2]), .\tempC[3][3] (\tempC[3] [3]), .n103(n103), 
        .n102(n102), .n101(n101), .n100(n100), .n13913({n13914, n13915, 
        n13916, n13917, n13918, n13919, n13920, n13921, n13922, 
        n13923, n13924, n13925, n13926, n13927, n13928, n13929, 
        n13930, n13931, n13932, n13933}), .n99(n99), .n98(n98), 
        .n97(n97), .n96(n96), .n95(n95), .n94(n94), .n93(n93), .n92(n92), 
        .n91(n91), .n90(n90), .n89(n89), .n88(n88), .n87(n87), .n86(n86), 
        .n85(n85), .n84(n84), .n83(n83), .n82(n82), .n81(n81), .n80(n80), 
        .n13934(n13934), .n6410(n6410), .n6409(n6409), .n6408(n6408), 
        .\tempC[0][1] (\tempC[0] [1]), .\tempC[0][2] (\tempC[0] [2]), .\tempC[0][3] (\tempC[0] [3]), 
        .\Fahrenheit[2] (Fahrenheit[2]), .n349(n349), .n348(n348), .n12445({n12446, 
        n12447, n12448, n12449, n12450, n12451, n12452, n12453, 
        n12454}), .n347(n347), .n346(n346), .n345(n345), .n344(n344), 
        .n343(n343), .n342(n342), .n341(n341), .n340(n340), .n339(n339), 
        .n12455(n12455), .\tempC[1][1] (\tempC[1] [1]), .\tempC[1][2] (\tempC[1] [2]), 
        .\tempC[1][3] (\tempC[1] [3]), .n271(n271), .n270(n270), .n269(n269), 
        .n268(n268), .n265(n265), .n11764({n11765, n11766, n11767, 
        n11768, n11769, n11770}), .n264(n264), .n263(n263), .n262(n262), 
        .n261(n261), .n260(n260), .n259(n259), .n11771(n11771));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    VHI i8837 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module dataTo595
//

module dataTo595 (clk_c, n1842, n30, \temp[0][4] , GND_net, sck_c, 
            n30_adj_11, \temp[1][4] , din_c, n1843, n1845, \temp[1][0] , 
            \temp[1][2] , \temp[1][1] , \temp[1][3] , n1846, \temp[2][0] , 
            \temp[2][3] , \temp[2][1] , \temp[2][2] , mode, \temp[4][0] , 
            \temp[4][3] , \temp[4][2] , \temp[4][1] , \temp[0][1] , 
            \temp[0][3] , \temp[0][0] , \temp[0][2] , \temp[3][0] , 
            \temp[3][3] , \temp[3][1] , \temp[3][2] , \linecode_7__N_2688[3] , 
            n20561, \linecode[71] , n6, \linecode[69] , n19876, n20135, 
            \linecode[16] , \linecode[32] , rst_c, rck_c, n20918, 
            \linecode[39] , n15, n15501, n19952, n20917, \linecode[23] , 
            n15_adj_12, n15499, n20926, n20160, n20504, n15_adj_13, 
            n15_adj_14, n20623, n20923);
    input clk_c;
    output n1842;
    input n30;
    input \temp[0][4] ;
    input GND_net;
    output sck_c;
    input n30_adj_11;
    input \temp[1][4] ;
    output din_c;
    output n1843;
    output n1845;
    input \temp[1][0] ;
    input \temp[1][2] ;
    input \temp[1][1] ;
    input \temp[1][3] ;
    output n1846;
    input \temp[2][0] ;
    input \temp[2][3] ;
    input \temp[2][1] ;
    input \temp[2][2] ;
    input [1:0]mode;
    input \temp[4][0] ;
    input \temp[4][3] ;
    input \temp[4][2] ;
    input \temp[4][1] ;
    input \temp[0][1] ;
    input \temp[0][3] ;
    input \temp[0][0] ;
    input \temp[0][2] ;
    input \temp[3][0] ;
    input \temp[3][3] ;
    input \temp[3][1] ;
    input \temp[3][2] ;
    input \linecode_7__N_2688[3] ;
    input n20561;
    input \linecode[71] ;
    input n6;
    input \linecode[69] ;
    input n19876;
    input n20135;
    input \linecode[16] ;
    input \linecode[32] ;
    input rst_c;
    output rck_c;
    input n20918;
    input \linecode[39] ;
    input n15;
    input n15501;
    input n19952;
    input n20917;
    input \linecode[23] ;
    input n15_adj_12;
    input n15499;
    output n20926;
    input n20160;
    input n20504;
    input n15_adj_13;
    input n15_adj_14;
    output n20623;
    output n20923;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    wire [15:0]n1833;
    
    wire clk_c_enable_95, n15597;
    wire [15:0]n33;
    
    wire n20387, n15497, n19941, n20388, n20385, n20386;
    wire [2:0]codeP;   // c:/labcode6/impl1/source/transto595.vhd(29[9:14])
    
    wire n5116;
    wire [2:0]n12;
    
    wire n18607;
    wire [31:0]shift_clock_cnt;   // c:/labcode6/impl1/source/transto595.vhd(23[9:24])
    wire [31:0]n133;
    
    wire shift_clock_ls, sck_N_3189, n18606, n18605, n18604, n18603, 
        n20240, n20241, n49, n20036, n58, n50, n15573, n18602, 
        n18601, din_N_3186, din_N_3179, n18600, n18599, n18598, 
        n18597, n18596, n41, n60, n54, n42, n51, n39, n18595, 
        n20279, n20611, n20281, n20502, n20922, n19814, n20251, 
        n20921, n20250, n20252, n20412, n20616, n18594, n20615, 
        n20925, n18593, n20622, n20621, n20924, n20628, n20602, 
        n20603, n20604, n18592, n20627, n56, n46, n20584, n20570, 
        n19817, n20507, n20596, n20597, n20598, n20629, n20278, 
        n15496, n20569, n20549, n19810, n20219, n137_adj_3545, n20238, 
        n19020, n15479, n19818, n15485, n19819, n20243, n49_adj_3546, 
        n19979, n19980, n19981, din_N_3184, din_N_3183, n19019, 
        n19021, clk_c_enable_132, n3, n19715, n138_adj_3547, n14525, 
        n15493, n14543, n15503, n19855, n134_adj_3548, n20553, n20563, 
        n19836, n4, n19966, n20617, n20242;
    
    FD1P3IX shift_cnt_FSM__i8 (.D(n1842), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[8]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i8.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i1 (.D(n33[0]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[1]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i1.GSR = "ENABLED";
    PFUMX i8634 (.BLUT(n20387), .ALUT(n15497), .C0(n19941), .Z(n20388));
    PFUMX i8632 (.BLUT(n20385), .ALUT(n30), .C0(\temp[0][4] ), .Z(n20386));
    FD1S3IX codeP__i0 (.D(n12[0]), .CK(clk_c), .CD(n5116), .Q(codeP[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(102[3] 123[10])
    defparam codeP__i0.GSR = "DISABLED";
    CCU2D shift_clock_cnt_1608_add_4_33 (.A0(shift_clock_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18607), .S0(n133[31]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_33.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_33.INIT1 = 16'h0000;
    defparam shift_clock_cnt_1608_add_4_33.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_33.INJECT1_1 = "NO";
    FD1S3AX shift_clock_ls_60 (.D(sck_c), .CK(clk_c), .Q(shift_clock_ls)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(66[3] 68[10])
    defparam shift_clock_ls_60.GSR = "DISABLED";
    FD1S3AY shift_clock_59 (.D(sck_N_3189), .CK(clk_c), .Q(sck_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(50[3] 59[10])
    defparam shift_clock_59.GSR = "ENABLED";
    CCU2D shift_clock_cnt_1608_add_4_31 (.A0(shift_clock_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18606), .COUT(n18607), .S0(n133[29]), 
          .S1(n133[30]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_31.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_31.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_31.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_31.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_29 (.A0(shift_clock_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18605), .COUT(n18606), .S0(n133[27]), 
          .S1(n133[28]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_29.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_29.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_29.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_29.INJECT1_1 = "NO";
    FD1P3AY shift_cnt_FSM__i0 (.D(n1833[15]), .SP(clk_c_enable_95), .CK(clk_c), 
            .Q(n33[0]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i0.GSR = "ENABLED";
    CCU2D shift_clock_cnt_1608_add_4_27 (.A0(shift_clock_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18604), .COUT(n18605), .S0(n133[25]), 
          .S1(n133[26]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_27.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_27.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_27.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_27.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_25 (.A0(shift_clock_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18603), .COUT(n18604), .S0(n133[23]), 
          .S1(n133[24]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_25.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_25.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_25.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_25.INJECT1_1 = "NO";
    PFUMX i8536 (.BLUT(n20240), .ALUT(n30_adj_11), .C0(\temp[1][4] ), 
          .Z(n20241));
    LUT4 i8473_4_lut (.A(n49), .B(n20036), .C(n58), .D(n50), .Z(n15573)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i8473_4_lut.init = 16'h0004;
    CCU2D shift_clock_cnt_1608_add_4_23 (.A0(shift_clock_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18602), .COUT(n18603), .S0(n133[21]), 
          .S1(n133[22]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_23.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_23.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_23.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_23.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_21 (.A0(shift_clock_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18601), .COUT(n18602), .S0(n133[19]), 
          .S1(n133[20]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_21.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_21.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_21.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_21.INJECT1_1 = "NO";
    FD1P3AX din_62 (.D(din_N_3179), .SP(din_N_3186), .CK(clk_c), .Q(din_c)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(102[3] 123[10])
    defparam din_62.GSR = "ENABLED";
    CCU2D shift_clock_cnt_1608_add_4_19 (.A0(shift_clock_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18600), .COUT(n18601), .S0(n133[17]), 
          .S1(n133[18]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_19.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_19.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_19.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_19.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_17 (.A0(shift_clock_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18599), .COUT(n18600), .S0(n133[15]), 
          .S1(n133[16]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_17.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_17.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_17.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_17.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_15 (.A0(shift_clock_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18598), .COUT(n18599), .S0(n133[13]), 
          .S1(n133[14]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_15.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_15.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_15.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_15.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_13 (.A0(shift_clock_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18597), .COUT(n18598), .S0(n133[11]), 
          .S1(n133[12]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_13.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_13.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_13.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_13.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1608_add_4_11 (.A0(shift_clock_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18596), .COUT(n18597), .S0(n133[9]), 
          .S1(n133[10]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_11.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_11.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_11.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_11.INJECT1_1 = "NO";
    FD1P3IX shift_cnt_FSM__i7 (.D(n1843), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1842));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i7.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[18]), .C(shift_clock_cnt[28]), 
         .D(shift_clock_cnt[2]), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i17_4_lut.init = 16'hfffe;
    FD1P3IX shift_cnt_FSM__i15 (.D(n1833[14]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[15]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i15.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i6 (.D(n1833[5]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1843));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i6.GSR = "ENABLED";
    LUT4 i8472_4_lut (.A(n41), .B(n60), .C(n54), .D(n42), .Z(n20036)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i8472_4_lut.init = 16'h0001;
    FD1P3IX shift_cnt_FSM__i14 (.D(n1833[13]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[14]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i14.GSR = "ENABLED";
    LUT4 i26_4_lut (.A(n51), .B(n39), .C(shift_clock_cnt[1]), .D(shift_clock_cnt[4]), 
         .Z(n58)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i26_4_lut.init = 16'hffef;
    FD1P3IX shift_cnt_FSM__i5 (.D(n1845), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[5]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i5.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i13 (.D(n1833[12]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[13]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i13.GSR = "ENABLED";
    LUT4 sck_I_0_73_2_lut_rep_133 (.A(sck_c), .B(shift_clock_ls), .Z(clk_c_enable_95)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(77[8:46])
    defparam sck_I_0_73_2_lut_rep_133.init = 16'h2222;
    CCU2D shift_clock_cnt_1608_add_4_9 (.A0(shift_clock_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18595), .COUT(n18596), .S0(n133[7]), 
          .S1(n133[8]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_9.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_9.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_9.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_9.INJECT1_1 = "NO";
    LUT4 n20280_bdd_2_lut_4_lut (.A(n20279), .B(n20611), .C(n1845), .D(n1833[15]), 
         .Z(n20281)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n20280_bdd_2_lut_4_lut.init = 16'h00ca;
    FD1P3IX shift_cnt_FSM__i12 (.D(n1833[11]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[12]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i12.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i11 (.D(n1833[10]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[11]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i11.GSR = "ENABLED";
    LUT4 \temp_1[[0__bdd_4_lut_4_lut  (.A(\temp[1][0] ), .B(\temp[1][2] ), 
         .C(\temp[1][1] ), .D(\temp[1][3] ), .Z(n20502)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam \temp_1[[0__bdd_4_lut_4_lut .init = 16'hfb7c;
    FD1P3IX shift_cnt_FSM__i10 (.D(n1833[9]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[10]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i10.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i4 (.D(n1846), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1845));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i4.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i9 (.D(n1833[8]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[9]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i9.GSR = "ENABLED";
    LUT4 n20624_bdd_3_lut_then_4_lut (.A(\temp[2][0] ), .B(\temp[2][3] ), 
         .C(\temp[2][1] ), .D(\temp[2][2] ), .Z(n20922)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+((D)+!C))) */ ;
    defparam n20624_bdd_3_lut_then_4_lut.init = 16'hd7cd;
    LUT4 n19814_bdd_4_lut_8660 (.A(n19814), .B(n1845), .C(mode[0]), .D(mode[1]), 
         .Z(n20251)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam n19814_bdd_4_lut_8660.init = 16'he33e;
    LUT4 n20624_bdd_3_lut_else_4_lut (.A(\temp[2][0] ), .B(\temp[2][3] ), 
         .C(\temp[2][1] ), .D(\temp[2][2] ), .Z(n20921)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam n20624_bdd_3_lut_else_4_lut.init = 16'hdbfc;
    LUT4 n19814_bdd_2_lut_8659 (.A(mode[0]), .B(mode[1]), .Z(n20250)) /* synthesis lut_function=(A (B)) */ ;
    defparam n19814_bdd_2_lut_8659.init = 16'h8888;
    LUT4 \temp_4[[0__bdd_4_lut  (.A(\temp[4][0] ), .B(\temp[4][3] ), .C(\temp[4][2] ), 
         .D(\temp[4][1] ), .Z(n20611)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam \temp_4[[0__bdd_4_lut .init = 16'h5bed;
    LUT4 n20251_bdd_3_lut (.A(n20251), .B(mode[1]), .C(n1833[5]), .Z(n20252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20251_bdd_3_lut.init = 16'hcaca;
    FD1P3IX shift_cnt_FSM__i3 (.D(n1833[2]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1846));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i3.GSR = "ENABLED";
    LUT4 \temp_0[[1__bdd_4_lut  (.A(\temp[0][1] ), .B(\temp[0][3] ), .C(\temp[0][0] ), 
         .D(\temp[0][2] ), .Z(n20412)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A !((C+!(D))+!B))) */ ;
    defparam \temp_0[[1__bdd_4_lut .init = 16'h73fd;
    LUT4 i8333_then_4_lut (.A(n1833[2]), .B(\temp[0][3] ), .C(\temp[0][1] ), 
         .D(\temp[0][2] ), .Z(n20616)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D)))) */ ;
    defparam i8333_then_4_lut.init = 16'hc7dc;
    CCU2D shift_clock_cnt_1608_add_4_7 (.A0(shift_clock_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18594), .COUT(n18595), .S0(n133[5]), 
          .S1(n133[6]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_7.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_7.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_7.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_7.INJECT1_1 = "NO";
    LUT4 i8333_else_4_lut (.A(n1833[2]), .B(\temp[0][3] ), .C(\temp[0][1] ), 
         .D(\temp[0][2] ), .Z(n20615)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i8333_else_4_lut.init = 16'hfbde;
    LUT4 i4328_2_lut_3_lut (.A(sck_c), .B(shift_clock_ls), .C(n1833[15]), 
         .Z(n15597)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(77[8:46])
    defparam i4328_2_lut_3_lut.init = 16'h2020;
    LUT4 n20618_bdd_3_lut_then_4_lut (.A(\temp[3][0] ), .B(\temp[3][3] ), 
         .C(\temp[3][1] ), .D(\temp[3][2] ), .Z(n20925)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+((D)+!C))) */ ;
    defparam n20618_bdd_3_lut_then_4_lut.init = 16'hd7cd;
    CCU2D shift_clock_cnt_1608_add_4_5 (.A0(shift_clock_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18593), .COUT(n18594), .S0(n133[3]), 
          .S1(n133[4]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_5.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_5.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_5.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_5.INJECT1_1 = "NO";
    LUT4 i8339_then_4_lut (.A(n1843), .B(\temp[4][3] ), .C(\temp[4][2] ), 
         .D(\temp[4][0] ), .Z(n20622)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B (C)+!B !(C+(D))))) */ ;
    defparam i8339_then_4_lut.init = 16'h371e;
    LUT4 i8339_else_4_lut (.A(n1843), .B(\temp[4][3] ), .C(\temp[4][2] ), 
         .D(\temp[4][0] ), .Z(n20621)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (((D)+!C)+!B)) */ ;
    defparam i8339_else_4_lut.init = 16'hdf3f;
    LUT4 i18_4_lut (.A(shift_clock_cnt[8]), .B(shift_clock_cnt[11]), .C(shift_clock_cnt[16]), 
         .D(shift_clock_cnt[21]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 n20618_bdd_3_lut_else_4_lut (.A(\temp[3][0] ), .B(\temp[3][3] ), 
         .C(\temp[3][1] ), .D(\temp[3][2] ), .Z(n20924)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam n20618_bdd_3_lut_else_4_lut.init = 16'hdbfc;
    LUT4 n20351_bdd_4_lut_then_4_lut (.A(n1833[2]), .B(\temp[4][1] ), .C(\temp[4][3] ), 
         .D(\temp[4][2] ), .Z(n20628)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam n20351_bdd_4_lut_then_4_lut.init = 16'hd3f4;
    PFUMX i8707 (.BLUT(n20602), .ALUT(n20603), .C0(\temp[1][0] ), .Z(n20604));
    FD1P3IX shift_cnt_FSM__i2 (.D(n1833[1]), .SP(clk_c_enable_95), .CD(n15597), 
            .CK(clk_c), .Q(n1833[2]));   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam shift_cnt_FSM__i2.GSR = "ENABLED";
    CCU2D shift_clock_cnt_1608_add_4_3 (.A0(shift_clock_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18592), .COUT(n18593), .S0(n133[1]), 
          .S1(n133[2]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_3.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_3.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1608_add_4_3.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_3.INJECT1_1 = "NO";
    LUT4 n20351_bdd_4_lut_else_4_lut (.A(n1833[2]), .B(\temp[4][1] ), .C(\temp[4][3] ), 
         .D(\temp[4][2] ), .Z(n20627)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+!(C (D)+!C !(D)))) */ ;
    defparam n20351_bdd_4_lut_else_4_lut.init = 16'heff6;
    CCU2D shift_clock_cnt_1608_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_clock_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18592), .S1(n133[0]));   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608_add_4_1.INIT0 = 16'hF000;
    defparam shift_clock_cnt_1608_add_4_1.INIT1 = 16'h0555;
    defparam shift_clock_cnt_1608_add_4_1.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1608_add_4_1.INJECT1_1 = "NO";
    LUT4 i9_2_lut (.A(shift_clock_cnt[27]), .B(shift_clock_cnt[30]), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i28_4_lut (.A(shift_clock_cnt[10]), .B(n56), .C(n46), .D(shift_clock_cnt[20]), 
         .Z(n60)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1833[11]), .B(n20584), .C(n20570), 
         .D(n1833[12]), .Z(n19817)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(107[27:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(shift_clock_cnt[19]), .B(shift_clock_cnt[5]), .C(shift_clock_cnt[22]), 
         .D(shift_clock_cnt[6]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(shift_clock_cnt[7]), .B(shift_clock_cnt[14]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i24_4_lut (.A(shift_clock_cnt[29]), .B(shift_clock_cnt[3]), .C(shift_clock_cnt[13]), 
         .D(shift_clock_cnt[31]), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 n20252_bdd_4_lut (.A(n20252), .B(n20250), .C(n1843), .D(n1842), 
         .Z(n20507)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n20252_bdd_4_lut.init = 16'hffca;
    LUT4 i14_2_lut (.A(shift_clock_cnt[15]), .B(shift_clock_cnt[23]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i14_2_lut.init = 16'heeee;
    PFUMX i8703 (.BLUT(n20596), .ALUT(n20597), .C0(\temp[1][1] ), .Z(n20598));
    LUT4 n19810_bdd_4_lut_8636 (.A(n20629), .B(\linecode_7__N_2688[3] ), 
         .C(n20561), .D(n1846), .Z(n20278)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam n19810_bdd_4_lut_8636.init = 16'hcfaa;
    LUT4 i8404_3_lut (.A(n15496), .B(\linecode[71] ), .C(n1842), .Z(n15497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(111[27:36])
    defparam i8404_3_lut.init = 16'hcaca;
    LUT4 i19_4_lut (.A(shift_clock_cnt[25]), .B(shift_clock_cnt[9]), .C(shift_clock_cnt[26]), 
         .D(shift_clock_cnt[12]), .Z(n51)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i4969_3_lut_then_4_lut (.A(\temp[1][4] ), .B(\temp[1][3] ), .C(\temp[1][1] ), 
         .D(\temp[1][2] ), .Z(n20603)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    defparam i4969_3_lut_then_4_lut.init = 16'h5114;
    LUT4 i4_4_lut (.A(n1833[8]), .B(n20569), .C(n20549), .D(n6), .Z(n19810)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(107[27:36])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i8396_4_lut_4_lut_4_lut (.A(n1843), .B(n20412), .C(\linecode[69] ), 
         .D(\temp[0][4] ), .Z(n15496)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam i8396_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 i8506_2_lut_3_lut (.A(n1843), .B(n1833[5]), .C(n1842), .Z(n19941)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(112[27:36])
    defparam i8506_2_lut_3_lut.init = 16'hfefe;
    LUT4 n19966_bdd_4_lut_8642_then_4_lut (.A(\temp[1][4] ), .B(\temp[1][0] ), 
         .C(\temp[1][3] ), .D(\temp[1][2] ), .Z(n20597)) /* synthesis lut_function=(!(A+(B (D)+!B !((D)+!C)))) */ ;
    defparam n19966_bdd_4_lut_8642_then_4_lut.init = 16'h1145;
    LUT4 i1_4_lut (.A(n1833[12]), .B(n19876), .C(\temp[1][4] ), .D(n20219), 
         .Z(n137_adj_3545)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut.init = 16'h0501;
    LUT4 n19966_bdd_3_lut_8535 (.A(n30_adj_11), .B(\temp[1][4] ), .C(n20135), 
         .Z(n20238)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n19966_bdd_3_lut_8535.init = 16'hb8b8;
    LUT4 i2_4_lut (.A(n1833[9]), .B(n20507), .C(n1833[11]), .D(n1833[10]), 
         .Z(n19020)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam i2_4_lut.init = 16'hfafe;
    LUT4 i2_4_lut_adj_108 (.A(n19817), .B(n15479), .C(n1833[14]), .D(n1833[13]), 
         .Z(n19818)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(109[27:36])
    defparam i2_4_lut_adj_108.init = 16'hfafe;
    LUT4 n19966_bdd_4_lut_8642_else_4_lut (.A(\temp[1][4] ), .B(\temp[1][0] ), 
         .C(\temp[1][3] ), .D(\temp[1][2] ), .Z(n20596)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C+!(D))))) */ ;
    defparam n19966_bdd_4_lut_8642_else_4_lut.init = 16'h5451;
    LUT4 i2_4_lut_adj_109 (.A(n19817), .B(n15485), .C(n1833[13]), .D(n1833[14]), 
         .Z(n19819)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(107[27:36])
    defparam i2_4_lut_adj_109.init = 16'hfafe;
    LUT4 i1_2_lut_2_lut (.A(n1833[12]), .B(n20243), .Z(n49_adj_3546)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 din_I_65_2_lut (.A(sck_c), .B(shift_clock_ls), .Z(din_N_3186)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(105[8:46])
    defparam din_I_65_2_lut.init = 16'h4444;
    LUT4 i7_2_lut (.A(shift_clock_cnt[17]), .B(shift_clock_cnt[24]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(55[8:25])
    defparam i7_2_lut.init = 16'heeee;
    PFUMX i8345 (.BLUT(n19979), .ALUT(n19980), .C0(codeP[1]), .Z(n19981));
    PFUMX mux_816_i1 (.BLUT(n19819), .ALUT(\linecode[16] ), .C0(n33[0]), 
          .Z(din_N_3184));
    PFUMX mux_749_i1 (.BLUT(n19818), .ALUT(\linecode[32] ), .C0(n33[0]), 
          .Z(din_N_3183));
    PFUMX i7389 (.BLUT(n19019), .ALUT(n19020), .C0(codeP[0]), .Z(n19021));
    FD1P3IX codeP__i1 (.D(n3), .SP(clk_c_enable_132), .CD(n5116), .CK(clk_c), 
            .Q(codeP[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(102[3] 123[10])
    defparam codeP__i1.GSR = "DISABLED";
    FD1P3IX codeP__i2 (.D(n19715), .SP(clk_c_enable_132), .CD(n5116), 
            .CK(clk_c), .Q(codeP[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/labcode6/impl1/source/transto595.vhd(102[3] 123[10])
    defparam codeP__i2.GSR = "DISABLED";
    LUT4 \temp_1[[1__bdd_3_lut  (.A(\temp[1][1] ), .B(\temp[1][3] ), .C(\temp[1][0] ), 
         .Z(n20219)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam \temp_1[[1__bdd_3_lut .init = 16'h6161;
    LUT4 i5305_2_lut (.A(n33[0]), .B(rst_c), .Z(rck_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(89[3] 95[10])
    defparam i5305_2_lut.init = 16'hbbbb;
    PFUMX i127 (.BLUT(n49_adj_3546), .ALUT(n137_adj_3545), .C0(n1843), 
          .Z(n138_adj_3547));
    L6MUX21 i4209 (.D0(n14525), .D1(n15493), .SD(n19941), .Z(n15479));
    L6MUX21 i4211 (.D0(n14543), .D1(n15503), .SD(n19941), .Z(n15485));
    LUT4 i1_2_lut_rep_111 (.A(n1833[15]), .B(n1833[8]), .Z(n20570)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(109[27:36])
    defparam i1_2_lut_rep_111.init = 16'heeee;
    PFUMX i8556 (.BLUT(n20278), .ALUT(n19810), .C0(n19855), .Z(n20279));
    PFUMX i4219 (.BLUT(n20918), .ALUT(\linecode[39] ), .C0(n1842), .Z(n15493));
    LUT4 i123_4_lut (.A(n138_adj_3547), .B(n1833[12]), .C(n1842), .D(n20604), 
         .Z(n134_adj_3548)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i123_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_rep_94_3_lut_4_lut (.A(n1833[15]), .B(n1833[8]), .C(n1833[13]), 
         .D(n1833[14]), .Z(n20553)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(109[27:36])
    defparam i1_2_lut_rep_94_3_lut_4_lut.init = 16'hfffe;
    PFUMX i3279 (.BLUT(n15), .ALUT(n15501), .C0(n19952), .Z(n14525));
    PFUMX i4228 (.BLUT(n20917), .ALUT(\linecode[23] ), .C0(n1842), .Z(n15503));
    PFUMX i3297 (.BLUT(n15_adj_12), .ALUT(n15499), .C0(n19952), .Z(n14543));
    PFUMX i8831 (.BLUT(n20924), .ALUT(n20925), .C0(n1833[2]), .Z(n20926));
    LUT4 i3_4_lut (.A(clk_c_enable_132), .B(codeP[0]), .C(codeP[1]), .D(codeP[2]), 
         .Z(n5116)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i2861_2_lut (.A(codeP[0]), .B(clk_c_enable_132), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(102[3] 123[10])
    defparam i2861_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(n20570), .B(n20569), .C(n134_adj_3548), .D(n20563), 
         .Z(n19836)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(109[27:36])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 n20386_bdd_3_lut_4_lut (.A(n20160), .B(\temp[0][4] ), .C(n1845), 
         .D(n20386), .Z(n20387)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n20386_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 codeP_2__I_0_i7_4_lut (.A(n19981), .B(codeP[1]), .C(codeP[2]), 
         .D(n4), .Z(din_N_3179)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(106[5] 114[14])
    defparam codeP_2__I_0_i7_4_lut.init = 16'h3a0a;
    LUT4 i3_4_lut_adj_110 (.A(sck_c), .B(rst_c), .C(n1833[15]), .D(shift_clock_ls), 
         .Z(clk_c_enable_132)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(105[8:46])
    defparam i3_4_lut_adj_110.init = 16'h4000;
    L6MUX21 i8330 (.D0(n20502), .D1(n20504), .SD(n1833[2]), .Z(n19966));
    LUT4 i3_2_lut_rep_125 (.A(n1833[10]), .B(n1833[9]), .Z(n20584)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(111[27:36])
    defparam i3_2_lut_rep_125.init = 16'heeee;
    LUT4 i4969_3_lut_else_4_lut (.A(\temp[1][4] ), .B(\temp[1][3] ), .C(\temp[1][1] ), 
         .D(\temp[1][2] ), .Z(n20602)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    defparam i4969_3_lut_else_4_lut.init = 16'h5457;
    LUT4 i1_3_lut_4_lut (.A(n1833[10]), .B(n1833[9]), .C(n1833[11]), .D(n20388), 
         .Z(n19019)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(111[27:36])
    defparam i1_3_lut_4_lut.init = 16'hefee;
    LUT4 i8501_4_lut (.A(n1833[1]), .B(n19814), .C(n33[0]), .D(n1833[15]), 
         .Z(n19855)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8501_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(n1846), .B(n1833[2]), .Z(n19814)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(112[27:36])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_104_3_lut (.A(n1833[10]), .B(n1833[9]), .C(n1833[11]), 
         .Z(n20563)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(111[27:36])
    defparam i1_2_lut_rep_104_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_90_3_lut_4_lut (.A(n1833[10]), .B(n1833[9]), .C(n1833[12]), 
         .D(n1833[11]), .Z(n20549)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(111[27:36])
    defparam i1_2_lut_rep_90_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8344_4_lut_4_lut (.A(n33[0]), .B(n19836), .C(codeP[0]), .D(din_N_3183), 
         .Z(n19980)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam i8344_4_lut_4_lut.init = 16'h4f40;
    LUT4 i8343_4_lut_4_lut (.A(n33[0]), .B(n20281), .C(codeP[0]), .D(din_N_3184), 
         .Z(n19979)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(81[17:26])
    defparam i8343_4_lut_4_lut.init = 16'hf404;
    LUT4 i1216_2_lut (.A(codeP[0]), .B(codeP[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(119[14:19])
    defparam i1216_2_lut.init = 16'h6666;
    LUT4 i15_3_lut (.A(codeP[0]), .B(codeP[2]), .C(codeP[1]), .Z(n19715)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/labcode6/impl1/source/transto595.vhd(119[14:19])
    defparam i15_3_lut.init = 16'h6c6c;
    FD1S3IX shift_clock_cnt_1608__i0 (.D(n133[0]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i0.GSR = "ENABLED";
    LUT4 n19966_bdd_3_lut_8643 (.A(n19966), .B(n15_adj_13), .C(n1846), 
         .Z(n20240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19966_bdd_3_lut_8643.init = 16'hcaca;
    LUT4 i1_2_lut_adj_111 (.A(sck_c), .B(n15573), .Z(sck_N_3189)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_111.init = 16'h6666;
    LUT4 n15_bdd_3_lut (.A(n15_adj_14), .B(n20617), .C(n1846), .Z(n20385)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n15_bdd_3_lut.init = 16'hacac;
    LUT4 n20241_bdd_3_lut (.A(n20241), .B(n20598), .C(n1845), .Z(n20242)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20241_bdd_3_lut.init = 16'hcaca;
    PFUMX i8723 (.BLUT(n20627), .ALUT(n20628), .C0(\temp[4][0] ), .Z(n20629));
    PFUMX i8719 (.BLUT(n20621), .ALUT(n20622), .C0(\temp[4][1] ), .Z(n20623));
    PFUMX i8829 (.BLUT(n20921), .ALUT(n20922), .C0(n1833[2]), .Z(n20923));
    PFUMX i8715 (.BLUT(n20615), .ALUT(n20616), .C0(\temp[0][0] ), .Z(n20617));
    LUT4 i1_4_lut_adj_112 (.A(n19021), .B(n33[0]), .C(n1833[12]), .D(n20553), 
         .Z(n4)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_112.init = 16'h3332;
    FD1S3IX shift_clock_cnt_1608__i1 (.D(n133[1]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_110 (.A(n1833[14]), .B(n1833[13]), .Z(n20569)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/transto595.vhd(109[27:36])
    defparam i1_2_lut_rep_110.init = 16'heeee;
    FD1S3IX shift_clock_cnt_1608__i2 (.D(n133[2]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i2.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i3 (.D(n133[3]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i3.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i4 (.D(n133[4]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i4.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i5 (.D(n133[5]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i5.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i6 (.D(n133[6]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i6.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i7 (.D(n133[7]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i7.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i8 (.D(n133[8]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i8.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i9 (.D(n133[9]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i9.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i10 (.D(n133[10]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i10.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i11 (.D(n133[11]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i11.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i12 (.D(n133[12]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i12.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i13 (.D(n133[13]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i13.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i14 (.D(n133[14]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i14.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i15 (.D(n133[15]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i16 (.D(n133[16]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i16.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i17 (.D(n133[17]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i17.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i18 (.D(n133[18]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i18.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i19 (.D(n133[19]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i19.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i20 (.D(n133[20]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i20.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i21 (.D(n133[21]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i21.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i22 (.D(n133[22]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i22.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i23 (.D(n133[23]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i23.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i24 (.D(n133[24]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i24.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i25 (.D(n133[25]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i25.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i26 (.D(n133[26]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i26.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i27 (.D(n133[27]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i27.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i28 (.D(n133[28]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i28.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i29 (.D(n133[29]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i29.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i30 (.D(n133[30]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i30.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1608__i31 (.D(n133[31]), .CK(clk_c), .CD(n15573), 
            .Q(shift_clock_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/transto595.vhd(54[21:36])
    defparam shift_clock_cnt_1608__i31.GSR = "ENABLED";
    PFUMX i8538 (.BLUT(n20242), .ALUT(n20238), .C0(n1833[5]), .Z(n20243));
    
endmodule
//
// Verilog Description of module toF
//

module toF (clk_c, GND_net, n28, n27, n81, n80, n83, n82, \tempC[3][0] , 
            \tempC[3][2] , \tempC[3][3] , \tempC[3][1] , n85, n84, 
            n87, n86, n30, n29, n89, n88, n32, n31, n34, n33, 
            n36, n35, n91, n90, n38, n37, n40, n39, n42, n41, 
            n44, n43, \tempF[4][0] , n46, n45, \tempF[3][0] , \tempF[2][0] , 
            \tempF[1][0] , \tempF[0][0] , \tempC[4][0] , \tempC[4][2] , 
            \tempC[4][3] , \tempC[4][1] , n93, n92, n95, n94, n48, 
            n47, n50, n49, n259, n261, n260, \Fahrenheit[2] , 
            n103, n9476, \tempC[2][0] , \tempC[2][2] , n12950, n13913, 
            \tempC[0][0] , \tempC[0][2] , n12445, \tempC[1][0] , \tempC[1][1] , 
            n11764, n263, n262, n265, n264, \tempC[0][1] , \tempC[0][3] , 
            n97, n96, \tempC[1][2] , \tempC[1][3] , \tempC[2][1] , 
            n271, n99, n98, n101, n100, n102, n269, n268, n270, 
            n339, n341, n340, n343, n342, \tempF[4][1] , n345, 
            n344, \tempF[4][2] , \tempF[4][3] , \tempF[3][1] , \tempF[3][2] , 
            \tempF[3][3] , \tempF[2][1] , \tempF[2][2] , \tempF[2][3] , 
            \tempF[1][1] , \tempF[1][2] , \tempF[1][3] , \tempF[0][1] , 
            \tempF[0][2] , \tempF[0][3] , n349, n347, n346, n348, 
            n173, n175, n174, n177, n176, n179, n178, n189, 
            n181, n180, n183, n182, n185, n184, n187, n186, 
            n188, n11771, n12455, n13934, \tempC[2][3] , n12965, 
            n26, n25);
    input clk_c;
    input GND_net;
    input n28;
    input n27;
    input n81;
    input n80;
    input n83;
    input n82;
    input \tempC[3][0] ;
    input \tempC[3][2] ;
    input \tempC[3][3] ;
    input \tempC[3][1] ;
    input n85;
    input n84;
    input n87;
    input n86;
    input n30;
    input n29;
    input n89;
    input n88;
    input n32;
    input n31;
    input n34;
    input n33;
    input n36;
    input n35;
    input n91;
    input n90;
    input n38;
    input n37;
    input n40;
    input n39;
    input n42;
    input n41;
    input n44;
    input n43;
    output \tempF[4][0] ;
    input n46;
    input n45;
    output \tempF[3][0] ;
    output \tempF[2][0] ;
    output \tempF[1][0] ;
    output \tempF[0][0] ;
    input \tempC[4][0] ;
    input \tempC[4][2] ;
    input \tempC[4][3] ;
    input \tempC[4][1] ;
    input n93;
    input n92;
    input n95;
    input n94;
    input n48;
    input n47;
    input n50;
    input n49;
    input n259;
    input n261;
    input n260;
    input \Fahrenheit[2] ;
    input n103;
    output [23:0]n9476;
    input \tempC[2][0] ;
    input \tempC[2][2] ;
    output [13:0]n12950;
    output [19:0]n13913;
    input \tempC[0][0] ;
    input \tempC[0][2] ;
    output [8:0]n12445;
    input \tempC[1][0] ;
    input \tempC[1][1] ;
    output [5:0]n11764;
    input n263;
    input n262;
    input n265;
    input n264;
    input \tempC[0][1] ;
    input \tempC[0][3] ;
    input n97;
    input n96;
    input \tempC[1][2] ;
    input \tempC[1][3] ;
    input \tempC[2][1] ;
    input n271;
    input n99;
    input n98;
    input n101;
    input n100;
    input n102;
    input n269;
    input n268;
    input n270;
    input n339;
    input n341;
    input n340;
    input n343;
    input n342;
    output \tempF[4][1] ;
    input n345;
    input n344;
    output \tempF[4][2] ;
    output \tempF[4][3] ;
    output \tempF[3][1] ;
    output \tempF[3][2] ;
    output \tempF[3][3] ;
    output \tempF[2][1] ;
    output \tempF[2][2] ;
    output \tempF[2][3] ;
    output \tempF[1][1] ;
    output \tempF[1][2] ;
    output \tempF[1][3] ;
    output \tempF[0][1] ;
    output \tempF[0][2] ;
    output \tempF[0][3] ;
    input n349;
    input n347;
    input n346;
    input n348;
    input n173;
    input n175;
    input n174;
    input n177;
    input n176;
    input n179;
    input n178;
    input n189;
    input n181;
    input n180;
    input n183;
    input n182;
    input n185;
    input n184;
    input n187;
    input n186;
    input n188;
    output n11771;
    output n12455;
    output n13934;
    input \tempC[2][3] ;
    output n12965;
    input n26;
    input n25;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    
    wire dg2, clk_c_enable_150;
    wire [3:0]dg;   // c:/labcode6/impl1/source/tof.vhd(20[26:28])
    
    wire n18711;
    wire [6:0]n12370;
    wire [9:0]n12379;
    
    wire n18712, n18466, n14143, n18422;
    wire [26:0]tmp;   // c:/labcode6/impl1/source/tof.vhd(48[10:13])
    wire [31:0]Fahrenheit;   // c:/labcode6/impl1/source/tof.vhd(19[8:18])
    
    wire n18423, n18535;
    wire [25:0]n14281;
    
    wire n18536, dg3, dh0;
    wire [3:0]dh;   // c:/labcode6/impl1/source/tof.vhd(20[29:31])
    
    wire dh1, dh2, dh3, n18465;
    wire [23:0]n14118;
    
    wire n18464, n18710;
    wire [3:0]db;   // c:/labcode6/impl1/source/tof.vhd(20[11:13])
    
    wire n5102;
    wire [3:0]n15;
    
    wire n18463, n12322;
    wire [3:0]dc;   // c:/labcode6/impl1/source/tof.vhd(20[14:16])
    
    wire n5104;
    wire [3:0]n15_adj_3538;
    
    wire n18462, n11663, n18534, n18461, n18533;
    wire [31:0]DataF_4__31__N_2470;
    
    wire n18532, n18708, n11702;
    wire [8:0]n11703;
    
    wire n11713, n18531, n18460;
    wire [19:0]n12301;
    wire [3:0]dd;   // c:/labcode6/impl1/source/tof.vhd(20[17:19])
    
    wire n5106;
    wire [3:0]n15_adj_3539;
    
    wire n18530;
    wire [3:0]de;   // c:/labcode6/impl1/source/tof.vhd(20[20:22])
    
    wire n5108;
    wire [3:0]n15_adj_3540;
    wire [3:0]df;   // c:/labcode6/impl1/source/tof.vhd(20[23:25])
    
    wire n5110;
    wire [3:0]n15_adj_3541;
    
    wire clk_c_enable_130;
    wire [3:0]n15_adj_3542;
    
    wire n2252;
    wire [3:0]n15_adj_3543;
    
    wire n18529, n18528, n18707;
    wire [5:0]n11695;
    
    wire n18421, n18527;
    wire [31:0]DataF_3__31__N_2502;
    
    wire dg1, dg0;
    wire [31:0]DataF_2__31__N_2534;
    
    wire df3, df2, df1, df0, n18706;
    wire [31:0]DataF_1__31__N_2566;
    
    wire de3, de2, de1, de0;
    wire [31:0]DataF_0__31__N_2598;
    
    wire dd3, dd2, dd1, dd0, n18526, n18705, n18459, n18458, 
        n18703, n18525, n18420, n18702, n6, n18701, n18239, n18242, 
        n20581, n18699, n18277, n12378, n18698, n20555, n18697, 
        n18265, n20575, n18519, n18518, n18695, n12937, n18694;
    wire [11:0]n12391;
    
    wire n12404;
    wire [13:0]n12922;
    
    wire n18693, n20541, n19778, n20542, n20545, clk_c_enable_124, 
        n14, n45_adj_3535, n13, n19864, clk_c_enable_111, n18692, 
        n18691, n18690, n18689;
    wire [3:0]da;   // c:/labcode6/impl1/source/tof.vhd(20[8:10])
    
    wire n20515;
    wire [3:0]n1;
    wire [15:0]n13324;
    wire [26:0]n113;
    
    wire n18687, n12921;
    wire [22:0]n9533;
    
    wire n18517;
    wire [17:0]n11644;
    
    wire n18686;
    wire [20:0]n12899;
    
    wire n18516, n18419;
    wire [15:0]n12352;
    
    wire n18590, n18685, n21, n19880, n19750, n19742, clk_c_enable_127, 
        n18684, n18515, n20546, clk_c_enable_121, n18514, n18683, 
        n18295, n20536, n18457, n18682, n18336, n18681;
    wire [6:0]n11790;
    wire [7:0]n12435;
    
    wire n18513, n20551, n19727, n20535, n18456, n18455, n18512, 
        n18680, n18679, n18511, n18589, n18453, n14308, n18678, 
        n18677, n18452, n18588, n18587, n18510, n20552, clk_c_enable_118, 
        n18509;
    wire [3:0]n741;
    
    wire clk_c_enable_114;
    wire [3:0]n705;
    wire [3:0]n667;
    
    wire n18508, n18507, n18506, n18586, n18505, n18585, n18451;
    wire [3:0]n627;
    
    wire n18584;
    wire [3:0]n585;
    wire [3:0]n541;
    wire [3:0]n495;
    
    wire n18583, n18504, n18582, n18581, n18450, n18580, n18503, 
        n18579, n18449, n19843, n493, n18578, n18448, n18576, 
        n18447, n18575, n18574, n18573, n18446, n18572, n18571, 
        n18445, n18496, n13341, n18495, n8, n20586, n6_adj_3536, 
        n20588, n20566, n18307, n18570, n18494, n18569, n18493, 
        n18568, n18567, n18444, n18443, n18566, n18492, n18442, 
        n18441, n18491, n18490, n18661, n12369, n18660;
    wire [13:0]n12336;
    
    wire n12351, n18489, n18564, n12898, n18659, n18658, n18657, 
        n18563;
    wire [17:0]n12879;
    
    wire n18656, n18562, n18561, n18560, n18559, n18487, n13663, 
        n18486;
    wire [17:0]n13644;
    
    wire n18655, n18654, n18558, n18485, n18484, n18483, n18652, 
        n18482, n18557, n18556, n18651;
    wire [10:0]n12323;
    
    wire n12335, n18650, n18649, n18648, n18647, n18555, n18481, 
        n18646, n18480, n18479, n18553, n18552, n18434, n18433, 
        n18432, n18551, n18550, n18753, n11798, n18752, n18751, 
        n18749, n18748, n18747, n18745, n18431, n18477, n18549, 
        n18744, n18743, n18742, n18740, n12444, n18739, n18738, 
        n18737, n18735, n18734;
    wire [9:0]n12938;
    
    wire n12949, n18733, n18732, n18476, n18475, n18430, n18547, 
        n18474, n18546, n18545, n18544, n18473, n18543, n18542, 
        n18541, n18429, n18428, n18731, n18730, n18729, n18727, 
        n18726, n18725, n18724, n18723, n18721, n18720, n12390, 
        n18719, n18718, n18717, n18716, n18714, n18713, n18427, 
        n18426, n18472, n18540, n18471, n18470, n18469, n18539, 
        n18425, n18468, n18424;
    
    FD1P3AX dg2_335 (.D(dg[2]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dg2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg2_335.GSR = "DISABLED";
    CCU2D add_3146_6 (.A0(n12370[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12370[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18711), .COUT(n18712), .S0(n12379[4]), .S1(n12379[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_6.INIT0 = 16'h5aaa;
    defparam add_3146_6.INIT1 = 16'h5aaa;
    defparam add_3146_6.INJECT1_0 = "NO";
    defparam add_3146_6.INJECT1_1 = "NO";
    CCU2D add_3233_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18466), 
          .S0(n14143));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_cout.INIT0 = 16'h0000;
    defparam add_3233_cout.INIT1 = 16'h0000;
    defparam add_3233_cout.INJECT1_0 = "NO";
    defparam add_3233_cout.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_10 (.A0(tmp[8]), .B0(Fahrenheit[8]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[9]), .B1(Fahrenheit[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18422), .COUT(n18423));
    defparam sub_972_add_2_10.INIT0 = 16'h5999;
    defparam sub_972_add_2_10.INIT1 = 16'h5999;
    defparam sub_972_add_2_10.INJECT1_0 = "NO";
    defparam sub_972_add_2_10.INJECT1_1 = "NO";
    CCU2D add_2813_24 (.A0(n14281[24]), .B0(n28), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[25]), .B1(n27), .C1(GND_net), .D1(GND_net), .CIN(n18535), 
          .COUT(n18536), .S0(Fahrenheit[28]), .S1(Fahrenheit[29]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_24.INIT0 = 16'h5666;
    defparam add_2813_24.INIT1 = 16'h5666;
    defparam add_2813_24.INJECT1_0 = "NO";
    defparam add_2813_24.INJECT1_1 = "NO";
    FD1P3AX dg3_333 (.D(dg[3]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dg3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg3_333.GSR = "DISABLED";
    FD1P3AX dh0_326 (.D(dh[0]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dh0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh0_326.GSR = "DISABLED";
    FD1P3AX dh1_324 (.D(dh[1]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dh1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh1_324.GSR = "DISABLED";
    FD1P3AX dh2_322 (.D(dh[2]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dh2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh2_322.GSR = "DISABLED";
    FD1P3AX dh3_320 (.D(dh[3]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dh3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh3_320.GSR = "DISABLED";
    CCU2D add_3233_24 (.A0(n81), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18465), 
          .COUT(n18466), .S0(n14118[22]), .S1(n14118[23]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_24.INIT0 = 16'hfaaa;
    defparam add_3233_24.INIT1 = 16'hfaaa;
    defparam add_3233_24.INJECT1_0 = "NO";
    defparam add_3233_24.INJECT1_1 = "NO";
    CCU2D add_3233_22 (.A0(n83), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n82), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18464), 
          .COUT(n18465), .S0(n14118[20]), .S1(n14118[21]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_22.INIT0 = 16'hfaaa;
    defparam add_3233_22.INIT1 = 16'hfaaa;
    defparam add_3233_22.INJECT1_0 = "NO";
    defparam add_3233_22.INJECT1_1 = "NO";
    CCU2D add_3146_4 (.A0(\tempC[3][0] ), .B0(\tempC[3][2] ), .C0(\tempC[3][3] ), 
          .D0(GND_net), .A1(n12370[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18710), .COUT(n18711), .S0(n12379[2]), 
          .S1(n12379[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_4.INIT0 = 16'h9696;
    defparam add_3146_4.INIT1 = 16'h5aaa;
    defparam add_3146_4.INJECT1_0 = "NO";
    defparam add_3146_4.INJECT1_1 = "NO";
    CCU2D add_3146_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[3][1] ), .B1(\tempC[3][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18710), .S1(n12379[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_2.INIT0 = 16'h7000;
    defparam add_3146_2.INIT1 = 16'h5666;
    defparam add_3146_2.INJECT1_0 = "NO";
    defparam add_3146_2.INJECT1_1 = "NO";
    FD1S3IX db__i0 (.D(n15[0]), .CK(clk_c), .CD(n5102), .Q(db[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam db__i0.GSR = "DISABLED";
    CCU2D add_3233_20 (.A0(n12322), .B0(n85), .C0(GND_net), .D0(GND_net), 
          .A1(n84), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18463), 
          .COUT(n18464), .S0(n14118[18]), .S1(n14118[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_20.INIT0 = 16'h5666;
    defparam add_3233_20.INIT1 = 16'hfaaa;
    defparam add_3233_20.INJECT1_0 = "NO";
    defparam add_3233_20.INJECT1_1 = "NO";
    FD1S3IX dc__i0 (.D(n15_adj_3538[0]), .CK(clk_c), .CD(n5104), .Q(dc[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dc__i0.GSR = "DISABLED";
    CCU2D add_3233_18 (.A0(n87), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11663), .B1(n86), .C1(GND_net), .D1(GND_net), .CIN(n18462), 
          .COUT(n18463), .S0(n14118[16]), .S1(n14118[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_18.INIT0 = 16'h0555;
    defparam add_3233_18.INIT1 = 16'h5666;
    defparam add_3233_18.INJECT1_0 = "NO";
    defparam add_3233_18.INJECT1_1 = "NO";
    CCU2D add_2813_22 (.A0(n14281[22]), .B0(n30), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[23]), .B1(n29), .C1(GND_net), .D1(GND_net), .CIN(n18534), 
          .COUT(n18535), .S0(Fahrenheit[26]), .S1(Fahrenheit[27]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_22.INIT0 = 16'h5666;
    defparam add_2813_22.INIT1 = 16'h5666;
    defparam add_2813_22.INJECT1_0 = "NO";
    defparam add_2813_22.INJECT1_1 = "NO";
    CCU2D add_3233_16 (.A0(n89), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n88), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18461), 
          .COUT(n18462), .S0(n14118[14]), .S1(n14118[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_16.INIT0 = 16'hfaaa;
    defparam add_3233_16.INIT1 = 16'h0555;
    defparam add_3233_16.INJECT1_0 = "NO";
    defparam add_3233_16.INJECT1_1 = "NO";
    CCU2D add_2813_20 (.A0(n14281[20]), .B0(n32), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[21]), .B1(n31), .C1(GND_net), .D1(GND_net), .CIN(n18533), 
          .COUT(n18534), .S0(Fahrenheit[24]), .S1(Fahrenheit[25]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_20.INIT0 = 16'h5666;
    defparam add_2813_20.INIT1 = 16'h5666;
    defparam add_2813_20.INJECT1_0 = "NO";
    defparam add_2813_20.INJECT1_1 = "NO";
    FD1P3AX dh31__i1 (.D(dh3), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_4__31__N_2470[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh31__i1.GSR = "DISABLED";
    CCU2D add_2813_18 (.A0(n14281[18]), .B0(n34), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[19]), .B1(n33), .C1(GND_net), .D1(GND_net), .CIN(n18532), 
          .COUT(n18533), .S0(Fahrenheit[22]), .S1(Fahrenheit[23]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_18.INIT0 = 16'h5666;
    defparam add_2813_18.INIT1 = 16'h5666;
    defparam add_2813_18.INJECT1_0 = "NO";
    defparam add_2813_18.INJECT1_1 = "NO";
    CCU2D add_3102_10 (.A0(n11702), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18708), 
          .S0(n11703[8]), .S1(n11713));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3102_10.INIT0 = 16'h5aaa;
    defparam add_3102_10.INIT1 = 16'h0000;
    defparam add_3102_10.INJECT1_0 = "NO";
    defparam add_3102_10.INJECT1_1 = "NO";
    CCU2D add_2813_16 (.A0(n14281[16]), .B0(n36), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[17]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n18531), 
          .COUT(n18532), .S0(Fahrenheit[20]), .S1(Fahrenheit[21]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_16.INIT0 = 16'h5666;
    defparam add_2813_16.INIT1 = 16'h5666;
    defparam add_2813_16.INJECT1_0 = "NO";
    defparam add_2813_16.INJECT1_1 = "NO";
    CCU2D add_3233_14 (.A0(n12301[14]), .B0(n91), .C0(GND_net), .D0(GND_net), 
          .A1(n90), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18460), 
          .COUT(n18461), .S0(n14118[12]), .S1(n14118[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_14.INIT0 = 16'h5666;
    defparam add_3233_14.INIT1 = 16'hfaaa;
    defparam add_3233_14.INJECT1_0 = "NO";
    defparam add_3233_14.INJECT1_1 = "NO";
    FD1S3IX dd__i0 (.D(n15_adj_3539[0]), .CK(clk_c), .CD(n5106), .Q(dd[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd__i0.GSR = "DISABLED";
    CCU2D add_2813_14 (.A0(n14281[14]), .B0(n38), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[15]), .B1(n37), .C1(GND_net), .D1(GND_net), .CIN(n18530), 
          .COUT(n18531), .S0(Fahrenheit[18]), .S1(Fahrenheit[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_14.INIT0 = 16'h5666;
    defparam add_2813_14.INIT1 = 16'h5666;
    defparam add_2813_14.INJECT1_0 = "NO";
    defparam add_2813_14.INJECT1_1 = "NO";
    FD1S3IX de__i0 (.D(n15_adj_3540[0]), .CK(clk_c), .CD(n5108), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de__i0.GSR = "DISABLED";
    FD1S3IX df__i0 (.D(n15_adj_3541[0]), .CK(clk_c), .CD(n5110), .Q(df[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df__i0.GSR = "DISABLED";
    FD1S3IX dg__i0 (.D(n15_adj_3542[0]), .CK(clk_c), .CD(clk_c_enable_130), 
            .Q(dg[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg__i0.GSR = "DISABLED";
    FD1S3IX dh__i0 (.D(n15_adj_3543[0]), .CK(clk_c), .CD(n2252), .Q(dh[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh__i0.GSR = "DISABLED";
    FD1P3AX dh21__i1 (.D(dh2), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_4__31__N_2470[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh21__i1.GSR = "DISABLED";
    FD1P3AX dh11__i1 (.D(dh1), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_4__31__N_2470[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh11__i1.GSR = "DISABLED";
    CCU2D add_2813_12 (.A0(n14281[12]), .B0(n40), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[13]), .B1(n39), .C1(GND_net), .D1(GND_net), .CIN(n18529), 
          .COUT(n18530), .S0(Fahrenheit[16]), .S1(Fahrenheit[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_12.INIT0 = 16'h5666;
    defparam add_2813_12.INIT1 = 16'h5666;
    defparam add_2813_12.INJECT1_0 = "NO";
    defparam add_2813_12.INJECT1_1 = "NO";
    CCU2D add_2813_10 (.A0(n14281[10]), .B0(n42), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[11]), .B1(n41), .C1(GND_net), .D1(GND_net), .CIN(n18528), 
          .COUT(n18529), .S0(Fahrenheit[14]), .S1(Fahrenheit[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_10.INIT0 = 16'h5666;
    defparam add_2813_10.INIT1 = 16'h5666;
    defparam add_2813_10.INJECT1_0 = "NO";
    defparam add_2813_10.INJECT1_1 = "NO";
    CCU2D add_3102_8 (.A0(n11695[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11695[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18707), .COUT(n18708), .S0(n11703[6]), .S1(n11703[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3102_8.INIT0 = 16'h5aaa;
    defparam add_3102_8.INIT1 = 16'h5aaa;
    defparam add_3102_8.INJECT1_0 = "NO";
    defparam add_3102_8.INJECT1_1 = "NO";
    FD1P3AX dh01__i1 (.D(dh0), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_4__31__N_2470[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh01__i1.GSR = "DISABLED";
    CCU2D sub_972_add_2_8 (.A0(tmp[6]), .B0(Fahrenheit[6]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[7]), .B1(Fahrenheit[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18421), .COUT(n18422));
    defparam sub_972_add_2_8.INIT0 = 16'h5999;
    defparam sub_972_add_2_8.INIT1 = 16'h5999;
    defparam sub_972_add_2_8.INJECT1_0 = "NO";
    defparam sub_972_add_2_8.INJECT1_1 = "NO";
    CCU2D add_2813_8 (.A0(n14281[8]), .B0(n44), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[9]), .B1(n43), .C1(GND_net), .D1(GND_net), .CIN(n18527), 
          .COUT(n18528), .S0(Fahrenheit[12]), .S1(Fahrenheit[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_8.INIT0 = 16'h5666;
    defparam add_2813_8.INIT1 = 16'h5666;
    defparam add_2813_8.INJECT1_0 = "NO";
    defparam add_2813_8.INJECT1_1 = "NO";
    FD1P3AX dg31__i1 (.D(dg3), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_3__31__N_2502[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg31__i1.GSR = "DISABLED";
    FD1P3AX dg21__i1 (.D(dg2), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_3__31__N_2502[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg21__i1.GSR = "DISABLED";
    FD1P3AX dg11__i1 (.D(dg1), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_3__31__N_2502[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg11__i1.GSR = "DISABLED";
    FD1P3AX dg01__i1 (.D(dg0), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_3__31__N_2502[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg01__i1.GSR = "DISABLED";
    FD1P3AX df31__i1 (.D(df3), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_2__31__N_2534[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df31__i1.GSR = "DISABLED";
    FD1P3AX df21__i1 (.D(df2), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_2__31__N_2534[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df21__i1.GSR = "DISABLED";
    FD1P3AX df11__i1 (.D(df1), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_2__31__N_2534[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df11__i1.GSR = "DISABLED";
    FD1P3AX df01__i1 (.D(df0), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_2__31__N_2534[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df01__i1.GSR = "DISABLED";
    CCU2D add_3102_6 (.A0(n11695[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11695[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18706), .COUT(n18707), .S0(n11703[4]), .S1(n11703[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3102_6.INIT0 = 16'h5aaa;
    defparam add_3102_6.INIT1 = 16'h5aaa;
    defparam add_3102_6.INJECT1_0 = "NO";
    defparam add_3102_6.INJECT1_1 = "NO";
    FD1P3AX de31__i1 (.D(de3), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_1__31__N_2566[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de31__i1.GSR = "DISABLED";
    FD1P3AX de21__i1 (.D(de2), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_1__31__N_2566[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de21__i1.GSR = "DISABLED";
    FD1P3AX de11__i1 (.D(de1), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_1__31__N_2566[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de11__i1.GSR = "DISABLED";
    FD1P3AX de01__i1 (.D(de0), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_1__31__N_2566[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de01__i1.GSR = "DISABLED";
    FD1P3AX dd31__i1 (.D(dd3), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_0__31__N_2598[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd31__i1.GSR = "DISABLED";
    FD1P3AX dd21__i1 (.D(dd2), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_0__31__N_2598[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd21__i1.GSR = "DISABLED";
    FD1P3AX dd11__i1 (.D(dd1), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_0__31__N_2598[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd11__i1.GSR = "DISABLED";
    FD1P3AX dd01__i1 (.D(dd0), .SP(clk_c_enable_150), .CK(clk_c), .Q(DataF_0__31__N_2598[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd01__i1.GSR = "DISABLED";
    FD1P3AX DataF_4___i1 (.D(DataF_4__31__N_2470[0]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[4][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_4___i1.GSR = "DISABLED";
    CCU2D add_2813_6 (.A0(n14281[6]), .B0(n46), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[7]), .B1(n45), .C1(GND_net), .D1(GND_net), .CIN(n18526), 
          .COUT(n18527), .S0(Fahrenheit[10]), .S1(Fahrenheit[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_6.INIT0 = 16'h5666;
    defparam add_2813_6.INIT1 = 16'h5666;
    defparam add_2813_6.INJECT1_0 = "NO";
    defparam add_2813_6.INJECT1_1 = "NO";
    FD1P3AX DataF_3___i1 (.D(DataF_3__31__N_2502[0]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[3][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_3___i1.GSR = "DISABLED";
    FD1P3AX DataF_2___i1 (.D(DataF_2__31__N_2534[0]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[2][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_2___i1.GSR = "DISABLED";
    FD1P3AX DataF_1___i1 (.D(DataF_1__31__N_2566[0]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[1][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_1___i1.GSR = "DISABLED";
    FD1P3AX DataF_0___i1 (.D(DataF_0__31__N_2598[0]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[0][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_0___i1.GSR = "DISABLED";
    CCU2D add_3102_4 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(\tempC[4][3] ), 
          .D0(GND_net), .A1(n11695[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18705), .COUT(n18706), .S0(n11703[2]), 
          .S1(n11703[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3102_4.INIT0 = 16'h9696;
    defparam add_3102_4.INIT1 = 16'h5aaa;
    defparam add_3102_4.INJECT1_0 = "NO";
    defparam add_3102_4.INJECT1_1 = "NO";
    CCU2D add_3102_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][1] ), .B1(\tempC[4][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18705), .S1(n11703[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3102_2.INIT0 = 16'h7000;
    defparam add_3102_2.INIT1 = 16'h5666;
    defparam add_3102_2.INJECT1_0 = "NO";
    defparam add_3102_2.INJECT1_1 = "NO";
    CCU2D add_3233_12 (.A0(n12301[12]), .B0(n93), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[13]), .B1(n92), .C1(GND_net), .D1(GND_net), .CIN(n18459), 
          .COUT(n18460), .S0(n14118[10]), .S1(n14118[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_12.INIT0 = 16'h5666;
    defparam add_3233_12.INIT1 = 16'h5666;
    defparam add_3233_12.INJECT1_0 = "NO";
    defparam add_3233_12.INJECT1_1 = "NO";
    CCU2D add_3233_10 (.A0(n12301[10]), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[11]), .B1(n94), .C1(GND_net), .D1(GND_net), .CIN(n18458), 
          .COUT(n18459), .S0(n14118[8]), .S1(n14118[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_10.INIT0 = 16'h5666;
    defparam add_3233_10.INIT1 = 16'h5666;
    defparam add_3233_10.INJECT1_0 = "NO";
    defparam add_3233_10.INJECT1_1 = "NO";
    CCU2D add_3101_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18703), 
          .S0(n11702));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3101_cout.INIT0 = 16'h0000;
    defparam add_3101_cout.INIT1 = 16'h0000;
    defparam add_3101_cout.INJECT1_0 = "NO";
    defparam add_3101_cout.INJECT1_1 = "NO";
    CCU2D add_2813_4 (.A0(n14281[4]), .B0(n48), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[5]), .B1(n47), .C1(GND_net), .D1(GND_net), .CIN(n18525), 
          .COUT(n18526), .S0(Fahrenheit[8]), .S1(Fahrenheit[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_4.INIT0 = 16'h5666;
    defparam add_2813_4.INIT1 = 16'h5666;
    defparam add_2813_4.INJECT1_0 = "NO";
    defparam add_2813_4.INJECT1_1 = "NO";
    CCU2D add_2813_2 (.A0(n14281[2]), .B0(n50), .C0(GND_net), .D0(GND_net), 
          .A1(n14281[3]), .B1(n49), .C1(GND_net), .D1(GND_net), .COUT(n18525), 
          .S1(Fahrenheit[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_2.INIT0 = 16'h7000;
    defparam add_2813_2.INIT1 = 16'h5666;
    defparam add_2813_2.INJECT1_0 = "NO";
    defparam add_2813_2.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_6 (.A0(tmp[4]), .B0(Fahrenheit[4]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[5]), .B1(Fahrenheit[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18420), .COUT(n18421));
    defparam sub_972_add_2_6.INIT0 = 16'h5999;
    defparam sub_972_add_2_6.INIT1 = 16'h5999;
    defparam sub_972_add_2_6.INJECT1_0 = "NO";
    defparam sub_972_add_2_6.INJECT1_1 = "NO";
    CCU2D add_3101_6 (.A0(\tempC[4][3] ), .B0(n6), .C0(GND_net), .D0(GND_net), 
          .A1(\tempC[4][0] ), .B1(\tempC[4][1] ), .C1(\tempC[4][2] ), 
          .D1(\tempC[4][3] ), .CIN(n18702), .COUT(n18703), .S0(n11695[4]), 
          .S1(n11695[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3101_6.INIT0 = 16'h9666;
    defparam add_3101_6.INIT1 = 16'hf800;
    defparam add_3101_6.INJECT1_0 = "NO";
    defparam add_3101_6.INJECT1_1 = "NO";
    CCU2D add_3101_4 (.A0(\tempC[4][2] ), .B0(n18239), .C0(GND_net), .D0(GND_net), 
          .A1(n18242), .B1(n20581), .C1(GND_net), .D1(GND_net), .CIN(n18701), 
          .COUT(n18702), .S0(n11695[2]), .S1(n11695[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3101_4.INIT0 = 16'h9666;
    defparam add_3101_4.INIT1 = 16'h9666;
    defparam add_3101_4.INJECT1_0 = "NO";
    defparam add_3101_4.INJECT1_1 = "NO";
    CCU2D add_3101_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][0] ), .B1(\tempC[4][1] ), .C1(\tempC[4][3] ), 
          .D1(GND_net), .COUT(n18701), .S1(n11695[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3101_2.INIT0 = 16'h7000;
    defparam add_3101_2.INIT1 = 16'h9696;
    defparam add_3101_2.INJECT1_0 = "NO";
    defparam add_3101_2.INJECT1_1 = "NO";
    CCU2D add_3145_8 (.A0(\tempC[3][3] ), .B0(n18277), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18699), 
          .S0(n12370[6]), .S1(n12378));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3145_8.INIT0 = 16'h7888;
    defparam add_3145_8.INIT1 = 16'h0000;
    defparam add_3145_8.INJECT1_0 = "NO";
    defparam add_3145_8.INJECT1_1 = "NO";
    CCU2D add_3145_6 (.A0(\tempC[3][2] ), .B0(n20555), .C0(GND_net), .D0(GND_net), 
          .A1(\tempC[3][3] ), .B1(n18277), .C1(GND_net), .D1(GND_net), 
          .CIN(n18698), .COUT(n18699), .S0(n12370[4]), .S1(n12370[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3145_6.INIT0 = 16'h9666;
    defparam add_3145_6.INIT1 = 16'h9666;
    defparam add_3145_6.INJECT1_0 = "NO";
    defparam add_3145_6.INJECT1_1 = "NO";
    CCU2D add_3145_4 (.A0(\tempC[3][0] ), .B0(\tempC[3][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(n18265), .B1(n20575), .C1(GND_net), .D1(GND_net), 
          .CIN(n18697), .COUT(n18698), .S0(n12370[2]), .S1(n12370[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3145_4.INIT0 = 16'h9666;
    defparam add_3145_4.INIT1 = 16'h9666;
    defparam add_3145_4.INJECT1_0 = "NO";
    defparam add_3145_4.INJECT1_1 = "NO";
    CCU2D add_3145_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[3][1] ), .B1(\tempC[3][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18697), .S1(n12370[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3145_2.INIT0 = 16'h7000;
    defparam add_3145_2.INIT1 = 16'h5666;
    defparam add_3145_2.INJECT1_0 = "NO";
    defparam add_3145_2.INJECT1_1 = "NO";
    CCU2D add_3098_17 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18519), 
          .S1(n11663));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_17.INIT0 = 16'h0fff;
    defparam add_3098_17.INIT1 = 16'h0000;
    defparam add_3098_17.INJECT1_0 = "NO";
    defparam add_3098_17.INJECT1_1 = "NO";
    CCU2D add_3098_15 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18518), 
          .COUT(n18519));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_15.INIT0 = 16'hf000;
    defparam add_3098_15.INIT1 = 16'h0fff;
    defparam add_3098_15.INJECT1_0 = "NO";
    defparam add_3098_15.INJECT1_1 = "NO";
    CCU2D add_3176_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18695), 
          .S0(n12937));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_cout.INIT0 = 16'h0000;
    defparam add_3176_cout.INIT1 = 16'h0000;
    defparam add_3176_cout.INJECT1_0 = "NO";
    defparam add_3176_cout.INJECT1_1 = "NO";
    CCU2D add_3176_14 (.A0(n12391[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12404), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18694), 
          .COUT(n18695), .S0(n12922[12]), .S1(n12922[13]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_14.INIT0 = 16'h5aaa;
    defparam add_3176_14.INIT1 = 16'h5aaa;
    defparam add_3176_14.INJECT1_0 = "NO";
    defparam add_3176_14.INJECT1_1 = "NO";
    FD1P3AX dd0_363 (.D(dd[0]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dd0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd0_363.GSR = "DISABLED";
    FD1P3AX dd1_361 (.D(dd[1]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dd1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd1_361.GSR = "DISABLED";
    CCU2D add_3176_12 (.A0(n12391[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12391[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18693), .COUT(n18694), .S0(n12922[10]), .S1(n12922[11]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_12.INIT0 = 16'h5aaa;
    defparam add_3176_12.INIT1 = 16'h5aaa;
    defparam add_3176_12.INJECT1_0 = "NO";
    defparam add_3176_12.INJECT1_1 = "NO";
    FD1P3AX dd2_359 (.D(dd[2]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dd2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd2_359.GSR = "DISABLED";
    FD1P3AX dd3_357 (.D(dd[3]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dd3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd3_357.GSR = "DISABLED";
    FD1P3AX de0_355 (.D(de[0]), .SP(clk_c_enable_150), .CK(clk_c), .Q(de0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de0_355.GSR = "DISABLED";
    FD1P3AX de1_353 (.D(de[1]), .SP(clk_c_enable_150), .CK(clk_c), .Q(de1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de1_353.GSR = "DISABLED";
    FD1P3AX de2_351 (.D(de[2]), .SP(clk_c_enable_150), .CK(clk_c), .Q(de2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de2_351.GSR = "DISABLED";
    FD1P3AX de3_349 (.D(de[3]), .SP(clk_c_enable_150), .CK(clk_c), .Q(de3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de3_349.GSR = "DISABLED";
    FD1P3AX df0_347 (.D(df[0]), .SP(clk_c_enable_150), .CK(clk_c), .Q(df0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df0_347.GSR = "DISABLED";
    FD1P3AX df1_345 (.D(df[1]), .SP(clk_c_enable_150), .CK(clk_c), .Q(df1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df1_345.GSR = "DISABLED";
    FD1P3AX df2_343 (.D(df[2]), .SP(clk_c_enable_150), .CK(clk_c), .Q(df2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df2_343.GSR = "DISABLED";
    FD1P3AX df3_341 (.D(df[3]), .SP(clk_c_enable_150), .CK(clk_c), .Q(df3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df3_341.GSR = "DISABLED";
    FD1P3AX dg0_339 (.D(dg[0]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dg0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg0_339.GSR = "DISABLED";
    FD1P3AX dg1_337 (.D(dg[1]), .SP(clk_c_enable_150), .CK(clk_c), .Q(dg1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg1_337.GSR = "DISABLED";
    LUT4 i2856_2_lut_3_lut_4_lut (.A(n20541), .B(n19778), .C(dg[0]), .D(clk_c_enable_150), 
         .Z(n15_adj_3542[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i2856_2_lut_3_lut_4_lut.init = 16'h0f78;
    LUT4 i2886_2_lut_4_lut (.A(n20542), .B(n20545), .C(clk_c_enable_150), 
         .D(de[0]), .Z(n15_adj_3540[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i2886_2_lut_4_lut.init = 16'h01fe;
    LUT4 i2_3_lut_rep_52_4_lut (.A(n20542), .B(n19778), .C(clk_c_enable_150), 
         .D(n20541), .Z(clk_c_enable_124)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_52_4_lut.init = 16'hfff8;
    LUT4 i2859_2_lut_3_lut_4_lut (.A(n14), .B(clk_c_enable_150), .C(db[0]), 
         .D(n45_adj_3535), .Z(n15[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i2859_2_lut_3_lut_4_lut.init = 16'h0f2d;
    LUT4 i7_4_lut (.A(n13), .B(db[3]), .C(n19864), .D(db[1]), .Z(n45_adj_3535)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7_4_lut.init = 16'h0008;
    LUT4 i2_2_lut_rep_49_3_lut (.A(n14), .B(clk_c_enable_150), .C(n45_adj_3535), 
         .Z(clk_c_enable_111)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i2_2_lut_rep_49_3_lut.init = 16'hfdfd;
    CCU2D add_3176_10 (.A0(n12391[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12391[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18692), .COUT(n18693), .S0(n12922[8]), .S1(n12922[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_10.INIT0 = 16'h5aaa;
    defparam add_3176_10.INIT1 = 16'h5aaa;
    defparam add_3176_10.INJECT1_0 = "NO";
    defparam add_3176_10.INJECT1_1 = "NO";
    CCU2D add_3176_8 (.A0(n12391[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12391[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18691), .COUT(n18692), .S0(n12922[6]), .S1(n12922[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_8.INIT0 = 16'h5aaa;
    defparam add_3176_8.INIT1 = 16'h5aaa;
    defparam add_3176_8.INJECT1_0 = "NO";
    defparam add_3176_8.INJECT1_1 = "NO";
    CCU2D add_3176_6 (.A0(n12391[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12391[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18690), .COUT(n18691), .S0(n12922[4]), .S1(n12922[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_6.INIT0 = 16'h5aaa;
    defparam add_3176_6.INIT1 = 16'h5aaa;
    defparam add_3176_6.INJECT1_0 = "NO";
    defparam add_3176_6.INJECT1_1 = "NO";
    CCU2D add_3176_4 (.A0(n12391[1]), .B0(\tempC[3][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12391[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18689), .COUT(n18690), .S0(n12922[2]), 
          .S1(n12922[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_4.INIT0 = 16'h5666;
    defparam add_3176_4.INIT1 = 16'h5aaa;
    defparam add_3176_4.INJECT1_0 = "NO";
    defparam add_3176_4.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(da[0]), .B(db[0]), .C(da[1]), .D(da[3]), .Z(n13)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0800;
    FD1S3IX da_1606__i0 (.D(n1[0]), .CK(clk_c), .CD(n20515), .Q(da[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1606__i0.GSR = "DISABLED";
    CCU2D add_3176_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(n13324[0]), .B1(\tempC[3][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18689), .S1(n12922[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3176_2.INIT0 = 16'h7000;
    defparam add_3176_2.INIT1 = 16'h5666;
    defparam add_3176_2.INJECT1_0 = "NO";
    defparam add_3176_2.INJECT1_1 = "NO";
    FD1S3IX tmp_1607__i0 (.D(n113[0]), .CK(clk_c), .CD(n2252), .Q(tmp[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i0.GSR = "DISABLED";
    LUT4 i8230_2_lut (.A(da[2]), .B(db[2]), .Z(n19864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8230_2_lut.init = 16'heeee;
    CCU2D add_2994_24 (.A0(n12921), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18687), 
          .S0(n9533[22]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_24.INIT0 = 16'h5aaa;
    defparam add_2994_24.INIT1 = 16'h0000;
    defparam add_2994_24.INJECT1_0 = "NO";
    defparam add_2994_24.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(da[0]), .B(da[1]), .C(da[2]), .D(da[3]), .Z(n14)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfdff;
    CCU2D add_3098_13 (.A0(n259), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18517), 
          .COUT(n18518), .S0(n11644[11]), .S1(n11644[12]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_13.INIT0 = 16'h0555;
    defparam add_3098_13.INIT1 = 16'hf000;
    defparam add_3098_13.INJECT1_0 = "NO";
    defparam add_3098_13.INJECT1_1 = "NO";
    CCU2D add_2994_22 (.A0(n12899[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18686), .COUT(n18687), .S0(n9533[20]), .S1(n9533[21]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_22.INIT0 = 16'h5aaa;
    defparam add_2994_22.INIT1 = 16'h5aaa;
    defparam add_2994_22.INJECT1_0 = "NO";
    defparam add_2994_22.INJECT1_1 = "NO";
    CCU2D add_3098_11 (.A0(n261), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n260), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18516), 
          .COUT(n18517), .S0(n11644[9]), .S1(n11644[10]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_11.INIT0 = 16'hfaaa;
    defparam add_3098_11.INIT1 = 16'h0555;
    defparam add_3098_11.INJECT1_0 = "NO";
    defparam add_3098_11.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_4 (.A0(tmp[2]), .B0(\Fahrenheit[2] ), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[3]), .B1(Fahrenheit[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18419), .COUT(n18420));
    defparam sub_972_add_2_4.INIT0 = 16'h5999;
    defparam sub_972_add_2_4.INIT1 = 16'h5999;
    defparam sub_972_add_2_4.INJECT1_0 = "NO";
    defparam sub_972_add_2_4.INJECT1_1 = "NO";
    LUT4 i7116_2_lut (.A(\tempC[4][0] ), .B(\tempC[4][1] ), .Z(n12352[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7116_2_lut.init = 16'h6666;
    CCU2D tmp_1607_add_4_27 (.A0(tmp[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18590), .S0(n113[25]), .S1(n113[26]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_27.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_27.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_27.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_27.INJECT1_1 = "NO";
    CCU2D add_2994_20 (.A0(n12899[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18685), .COUT(n18686), .S0(n9533[18]), .S1(n9533[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_20.INIT0 = 16'h5aaa;
    defparam add_2994_20.INIT1 = 16'h5aaa;
    defparam add_2994_20.INJECT1_0 = "NO";
    defparam add_2994_20.INJECT1_1 = "NO";
    LUT4 i7104_2_lut (.A(n12301[2]), .B(n103), .Z(n14118[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7104_2_lut.init = 16'h6666;
    LUT4 i7114_2_lut (.A(\tempC[4][0] ), .B(\tempC[4][2] ), .Z(n9476[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7114_2_lut.init = 16'h6666;
    LUT4 i7125_2_lut (.A(\tempC[2][0] ), .B(\tempC[2][2] ), .Z(n12950[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7125_2_lut.init = 16'h6666;
    LUT4 i7105_2_lut (.A(\tempC[3][0] ), .B(\tempC[3][3] ), .Z(n13913[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7105_2_lut.init = 16'h6666;
    LUT4 i7127_2_lut (.A(\tempC[0][0] ), .B(\tempC[0][2] ), .Z(n12445[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7127_2_lut.init = 16'h6666;
    LUT4 i7128_2_lut (.A(\tempC[1][0] ), .B(\tempC[1][1] ), .Z(n11764[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7128_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_101 (.A(dc[0]), .B(dc[2]), .C(dc[1]), .D(dc[3]), 
         .Z(n21)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_101.init = 16'h0200;
    LUT4 i3_4_lut_adj_102 (.A(n14), .B(db[2]), .C(db[1]), .D(n19880), 
         .Z(n19750)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_102.init = 16'hfeff;
    LUT4 i8244_2_lut (.A(db[0]), .B(db[3]), .Z(n19880)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8244_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_50_3_lut_4_lut (.A(n20545), .B(n19742), .C(clk_c_enable_150), 
         .D(n19778), .Z(clk_c_enable_127)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_rep_50_3_lut_4_lut.init = 16'hf8f0;
    CCU2D add_2994_18 (.A0(n12899[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18684), .COUT(n18685), .S0(n9533[16]), .S1(n9533[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_18.INIT0 = 16'h5aaa;
    defparam add_2994_18.INIT1 = 16'h5aaa;
    defparam add_2994_18.INJECT1_0 = "NO";
    defparam add_2994_18.INJECT1_1 = "NO";
    CCU2D add_3098_9 (.A0(n263), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n262), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18515), 
          .COUT(n18516), .S0(n11644[7]), .S1(n11644[8]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_9.INIT0 = 16'hfaaa;
    defparam add_3098_9.INIT1 = 16'h0555;
    defparam add_3098_9.INJECT1_0 = "NO";
    defparam add_3098_9.INJECT1_1 = "NO";
    LUT4 i6930_2_lut (.A(da[1]), .B(da[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6930_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_rep_53_4_lut (.A(n20546), .B(n19742), .C(clk_c_enable_150), 
         .D(n20545), .Z(clk_c_enable_121)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_53_4_lut.init = 16'hfff8;
    CCU2D add_3098_7 (.A0(n265), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n264), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18514), 
          .COUT(n18515), .S1(n11644[6]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_7.INIT0 = 16'hfaaa;
    defparam add_3098_7.INIT1 = 16'h0555;
    defparam add_3098_7.INJECT1_0 = "NO";
    defparam add_3098_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n20546), .B(n19742), .C(clk_c_enable_150), 
         .D(n19778), .Z(n5110)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf8f0;
    CCU2D add_2994_16 (.A0(n12899[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18683), .COUT(n18684), .S0(n9533[14]), .S1(n9533[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_16.INIT0 = 16'h5aaa;
    defparam add_2994_16.INIT1 = 16'h5aaa;
    defparam add_2994_16.INJECT1_0 = "NO";
    defparam add_2994_16.INJECT1_1 = "NO";
    LUT4 i7018_2_lut (.A(\tempC[0][1] ), .B(\tempC[0][3] ), .Z(n18295)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam i7018_2_lut.init = 16'h6666;
    LUT4 i2885_2_lut_4_lut (.A(n20536), .B(n20541), .C(clk_c_enable_150), 
         .D(df[0]), .Z(n15_adj_3541[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i2885_2_lut_4_lut.init = 16'h01fe;
    CCU2D add_3233_8 (.A0(n12301[8]), .B0(n97), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[9]), .B1(n96), .C1(GND_net), .D1(GND_net), .CIN(n18457), 
          .COUT(n18458), .S0(n14118[6]), .S1(n14118[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_8.INIT0 = 16'h5666;
    defparam add_3233_8.INIT1 = 16'h5666;
    defparam add_3233_8.INJECT1_0 = "NO";
    defparam add_3233_8.INJECT1_1 = "NO";
    CCU2D add_2994_14 (.A0(n12899[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18682), .COUT(n18683), .S0(n9533[12]), .S1(n9533[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_14.INIT0 = 16'h5aaa;
    defparam add_2994_14.INIT1 = 16'h5aaa;
    defparam add_2994_14.INJECT1_0 = "NO";
    defparam add_2994_14.INJECT1_1 = "NO";
    LUT4 i7057_2_lut (.A(\tempC[1][2] ), .B(\tempC[1][3] ), .Z(n18336)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam i7057_2_lut.init = 16'h6666;
    CCU2D add_2994_12 (.A0(n12899[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18681), .COUT(n18682), .S0(n9533[10]), .S1(n9533[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_12.INIT0 = 16'h5aaa;
    defparam add_2994_12.INIT1 = 16'h5aaa;
    defparam add_2994_12.INJECT1_0 = "NO";
    defparam add_2994_12.INJECT1_1 = "NO";
    LUT4 i7129_2_lut (.A(\tempC[0][0] ), .B(\tempC[0][1] ), .Z(n11790[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7129_2_lut.init = 16'h6666;
    LUT4 i7126_2_lut (.A(\tempC[2][0] ), .B(\tempC[2][1] ), .Z(n12435[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7126_2_lut.init = 16'h6666;
    CCU2D add_3098_5 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n271), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18513), 
          .COUT(n18514), .S0(n11644[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_5.INIT0 = 16'hf000;
    defparam add_3098_5.INIT1 = 16'hfaaa;
    defparam add_3098_5.INJECT1_0 = "NO";
    defparam add_3098_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_76_3_lut_4_lut (.A(n20551), .B(n19727), .C(n19778), 
         .D(n19742), .Z(n20535)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_76_3_lut_4_lut.init = 16'h8000;
    CCU2D add_3233_6 (.A0(n12301[6]), .B0(n99), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[7]), .B1(n98), .C1(GND_net), .D1(GND_net), .CIN(n18456), 
          .COUT(n18457), .S0(n14118[4]), .S1(n14118[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_6.INIT0 = 16'h5666;
    defparam add_3233_6.INIT1 = 16'h5666;
    defparam add_3233_6.INJECT1_0 = "NO";
    defparam add_3233_6.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n18419));
    defparam sub_972_add_2_2.INIT0 = 16'h0000;
    defparam sub_972_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_972_add_2_2.INJECT1_0 = "NO";
    defparam sub_972_add_2_2.INJECT1_1 = "NO";
    CCU2D add_3233_4 (.A0(n12301[4]), .B0(n101), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[5]), .B1(n100), .C1(GND_net), .D1(GND_net), .CIN(n18455), 
          .COUT(n18456), .S0(n14118[2]), .S1(n14118[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_4.INIT0 = 16'h5666;
    defparam add_3233_4.INIT1 = 16'h5666;
    defparam add_3233_4.INJECT1_0 = "NO";
    defparam add_3233_4.INJECT1_1 = "NO";
    CCU2D add_3233_2 (.A0(n12301[2]), .B0(n103), .C0(GND_net), .D0(GND_net), 
          .A1(n12301[3]), .B1(n102), .C1(GND_net), .D1(GND_net), .COUT(n18455), 
          .S1(n14118[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3233_2.INIT0 = 16'h7000;
    defparam add_3233_2.INIT1 = 16'h5666;
    defparam add_3233_2.INJECT1_0 = "NO";
    defparam add_3233_2.INJECT1_1 = "NO";
    CCU2D add_3098_3 (.A0(n269), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n268), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18512), 
          .COUT(n18513), .S0(n11644[1]), .S1(n11644[2]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_3.INIT0 = 16'hfaaa;
    defparam add_3098_3.INIT1 = 16'hfaaa;
    defparam add_3098_3.INJECT1_0 = "NO";
    defparam add_3098_3.INJECT1_1 = "NO";
    CCU2D add_2994_10 (.A0(n12899[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18680), .COUT(n18681), .S0(n9533[8]), .S1(n9533[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_10.INIT0 = 16'h5aaa;
    defparam add_2994_10.INIT1 = 16'h5aaa;
    defparam add_2994_10.INJECT1_0 = "NO";
    defparam add_2994_10.INJECT1_1 = "NO";
    CCU2D add_2994_8 (.A0(n12899[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18679), .COUT(n18680), .S0(n9533[6]), .S1(n9533[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_8.INIT0 = 16'h5aaa;
    defparam add_2994_8.INIT1 = 16'h5aaa;
    defparam add_2994_8.INJECT1_0 = "NO";
    defparam add_2994_8.INJECT1_1 = "NO";
    CCU2D add_3098_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n270), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n18512), 
          .S1(n11644[0]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3098_1.INIT0 = 16'hF000;
    defparam add_3098_1.INIT1 = 16'h0555;
    defparam add_3098_1.INJECT1_0 = "NO";
    defparam add_3098_1.INJECT1_1 = "NO";
    CCU2D add_3141_20 (.A0(n11663), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18511), 
          .S1(n12322));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_20.INIT0 = 16'h5aaa;
    defparam add_3141_20.INIT1 = 16'h0000;
    defparam add_3141_20.INJECT1_0 = "NO";
    defparam add_3141_20.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_25 (.A0(tmp[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18589), .COUT(n18590), .S0(n113[23]), .S1(n113[24]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_25.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_25.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_25.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_25.INJECT1_1 = "NO";
    CCU2D add_3241_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18453), 
          .S0(n14308));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_cout.INIT0 = 16'h0000;
    defparam add_3241_cout.INIT1 = 16'h0000;
    defparam add_3241_cout.INJECT1_0 = "NO";
    defparam add_3241_cout.INJECT1_1 = "NO";
    CCU2D add_2994_6 (.A0(n12899[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12899[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18678), .COUT(n18679), .S0(n9533[4]), .S1(n9533[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_6.INIT0 = 16'h5aaa;
    defparam add_2994_6.INIT1 = 16'h5aaa;
    defparam add_2994_6.INJECT1_0 = "NO";
    defparam add_2994_6.INJECT1_1 = "NO";
    CCU2D add_2994_4 (.A0(n12899[1]), .B0(\tempC[4][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12899[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18677), .COUT(n18678), .S0(n9533[2]), 
          .S1(n9533[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_4.INIT0 = 16'h5666;
    defparam add_2994_4.INIT1 = 16'h5aaa;
    defparam add_2994_4.INJECT1_0 = "NO";
    defparam add_2994_4.INJECT1_1 = "NO";
    CCU2D add_3241_26 (.A0(n14118[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14143), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18452), 
          .COUT(n18453), .S0(n14281[24]), .S1(n14281[25]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_26.INIT0 = 16'h5aaa;
    defparam add_3241_26.INIT1 = 16'h5aaa;
    defparam add_3241_26.INJECT1_0 = "NO";
    defparam add_3241_26.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_23 (.A0(tmp[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18588), .COUT(n18589), .S0(n113[21]), .S1(n113[22]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_23.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_23.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_23.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_23.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_21 (.A0(tmp[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18587), .COUT(n18588), .S0(n113[19]), .S1(n113[20]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_21.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_21.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_21.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_21.INJECT1_1 = "NO";
    CCU2D add_3141_18 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18510), 
          .COUT(n18511));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_18.INIT0 = 16'h0fff;
    defparam add_3141_18.INIT1 = 16'h0fff;
    defparam add_3141_18.INJECT1_0 = "NO";
    defparam add_3141_18.INJECT1_1 = "NO";
    CCU2D add_2994_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][0] ), .B1(\tempC[4][1] ), .C1(\tempC[4][2] ), 
          .D1(GND_net), .COUT(n18677), .S1(n9533[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2994_2.INIT0 = 16'h7000;
    defparam add_2994_2.INIT1 = 16'h9696;
    defparam add_2994_2.INJECT1_0 = "NO";
    defparam add_2994_2.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_54_4_lut (.A(n19727), .B(n20552), .C(clk_c_enable_150), 
         .D(n20551), .Z(clk_c_enable_118)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_54_4_lut.init = 16'hfff8;
    CCU2D add_3141_16 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18509), 
          .COUT(n18510), .S0(n12301[14]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_16.INIT0 = 16'hf000;
    defparam add_3141_16.INIT1 = 16'hf000;
    defparam add_3141_16.INJECT1_0 = "NO";
    defparam add_3141_16.INJECT1_1 = "NO";
    FD1P3IX db__i1 (.D(n741[1]), .SP(clk_c_enable_111), .CD(n5102), .CK(clk_c), 
            .Q(db[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam db__i1.GSR = "DISABLED";
    FD1P3IX db__i2 (.D(n741[2]), .SP(clk_c_enable_111), .CD(n5102), .CK(clk_c), 
            .Q(db[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam db__i2.GSR = "DISABLED";
    FD1P3IX db__i3 (.D(n741[3]), .SP(clk_c_enable_111), .CD(n5102), .CK(clk_c), 
            .Q(db[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam db__i3.GSR = "DISABLED";
    FD1P3IX dc__i1 (.D(n705[1]), .SP(clk_c_enable_114), .CD(n5104), .CK(clk_c), 
            .Q(dc[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dc__i1.GSR = "DISABLED";
    FD1P3IX dc__i2 (.D(n705[2]), .SP(clk_c_enable_114), .CD(n5104), .CK(clk_c), 
            .Q(dc[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dc__i2.GSR = "DISABLED";
    FD1P3IX dc__i3 (.D(n705[3]), .SP(clk_c_enable_114), .CD(n5104), .CK(clk_c), 
            .Q(dc[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dc__i3.GSR = "DISABLED";
    FD1P3IX dd__i1 (.D(n667[1]), .SP(clk_c_enable_118), .CD(n5106), .CK(clk_c), 
            .Q(dd[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_77_3_lut_4_lut (.A(n19727), .B(n20552), .C(n19778), 
         .D(n19742), .Z(n20536)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_77_3_lut_4_lut.init = 16'h8000;
    CCU2D add_3141_14 (.A0(n11644[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18508), .COUT(n18509), .S0(n12301[12]), .S1(n12301[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_14.INIT0 = 16'h5aaa;
    defparam add_3141_14.INIT1 = 16'h5aaa;
    defparam add_3141_14.INJECT1_0 = "NO";
    defparam add_3141_14.INJECT1_1 = "NO";
    CCU2D add_3141_12 (.A0(n11644[9]), .B0(n339), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18507), .COUT(n18508), .S0(n12301[10]), .S1(n12301[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_12.INIT0 = 16'h5666;
    defparam add_3141_12.INIT1 = 16'h5aaa;
    defparam add_3141_12.INJECT1_0 = "NO";
    defparam add_3141_12.INJECT1_1 = "NO";
    CCU2D add_3141_10 (.A0(n11644[7]), .B0(n341), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[8]), .B1(n340), .C1(GND_net), .D1(GND_net), .CIN(n18506), 
          .COUT(n18507), .S0(n12301[8]), .S1(n12301[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_10.INIT0 = 16'h5666;
    defparam add_3141_10.INIT1 = 16'h5666;
    defparam add_3141_10.INJECT1_0 = "NO";
    defparam add_3141_10.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_19 (.A0(tmp[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18586), .COUT(n18587), .S0(n113[17]), .S1(n113[18]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_19.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_19.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_19.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.A(n19727), .B(n20552), .C(clk_c_enable_150), 
         .D(n19742), .Z(n5108)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_103.init = 16'hf8f0;
    LUT4 i2887_2_lut_4_lut (.A(n20546), .B(n20551), .C(clk_c_enable_150), 
         .D(dd[0]), .Z(n15_adj_3539[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i2887_2_lut_4_lut.init = 16'h01fe;
    LUT4 i6984_2_lut_rep_116 (.A(\tempC[3][0] ), .B(\tempC[3][2] ), .Z(n20575)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam i6984_2_lut_rep_116.init = 16'h8888;
    LUT4 i6995_4_lut_3_lut_rep_96_4_lut (.A(\tempC[3][0] ), .B(\tempC[3][2] ), 
         .C(\tempC[3][1] ), .D(\tempC[3][3] ), .Z(n20555)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam i6995_4_lut_3_lut_rep_96_4_lut.init = 16'hf880;
    LUT4 i7000_2_lut_4_lut_4_lut (.A(\tempC[3][0] ), .B(\tempC[3][2] ), 
         .C(\tempC[3][1] ), .D(\tempC[3][3] ), .Z(n18277)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C (D)))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam i7000_2_lut_4_lut_4_lut.init = 16'hc880;
    CCU2D add_3141_8 (.A0(n265), .B0(n343), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[6]), .B1(n342), .C1(GND_net), .D1(GND_net), .CIN(n18505), 
          .COUT(n18506), .S0(n12301[6]), .S1(n12301[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_8.INIT0 = 16'h5666;
    defparam add_3141_8.INIT1 = 16'h5666;
    defparam add_3141_8.INJECT1_0 = "NO";
    defparam add_3141_8.INJECT1_1 = "NO";
    LUT4 i2884_2_lut_4_lut (.A(n20552), .B(n19750), .C(clk_c_enable_150), 
         .D(dc[0]), .Z(n15_adj_3538[0])) /* synthesis lut_function=(!(A (D)+!A (B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i2884_2_lut_4_lut.init = 16'h04fb;
    LUT4 i2_4_lut (.A(dd[3]), .B(dd[2]), .C(dd[0]), .D(dd[1]), .Z(n19727)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0020;
    LUT4 i2_4_lut_adj_104 (.A(de[3]), .B(de[0]), .C(de[1]), .D(de[2]), 
         .Z(n19742)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_104.init = 16'h0008;
    LUT4 i2_4_lut_adj_105 (.A(df[3]), .B(df[0]), .C(df[1]), .D(df[2]), 
         .Z(n19778)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_105.init = 16'h0008;
    LUT4 i1_2_lut_rep_92 (.A(n19750), .B(n21), .Z(n20551)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_92.init = 16'h4444;
    LUT4 i1_3_lut_rep_122 (.A(\tempC[4][1] ), .B(\tempC[4][2] ), .C(\tempC[4][0] ), 
         .Z(n20581)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam i1_3_lut_rep_122.init = 16'ha8a8;
    LUT4 i1_2_lut_rep_86_3_lut (.A(n19750), .B(n21), .C(n19727), .Z(n20545)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_rep_86_3_lut.init = 16'h4040;
    LUT4 i6973_4_lut_4_lut (.A(\tempC[4][1] ), .B(\tempC[4][2] ), .C(\tempC[4][0] ), 
         .D(\tempC[4][3] ), .Z(n6)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (D))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam i6973_4_lut_4_lut.init = 16'hec88;
    LUT4 i6928_1_lut (.A(da[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6928_1_lut.init = 16'h5555;
    LUT4 i7106_2_lut (.A(\tempC[3][0] ), .B(\tempC[3][1] ), .Z(n13324[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7106_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_82_3_lut_4_lut (.A(n19750), .B(n21), .C(n19742), 
         .D(n19727), .Z(n20541)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_82_3_lut_4_lut.init = 16'h4000;
    LUT4 i11_2_lut_rep_93 (.A(n21), .B(n45_adj_3535), .Z(n20552)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11_2_lut_rep_93.init = 16'h8888;
    CCU2D tmp_1607_add_4_17 (.A0(tmp[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18585), .COUT(n18586), .S0(n113[15]), .S1(n113[16]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_17.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_17.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_17.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_17.INJECT1_1 = "NO";
    CCU2D add_3241_24 (.A0(n14118[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18451), .COUT(n18452), .S0(n14281[22]), .S1(n14281[23]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_24.INIT0 = 16'h5aaa;
    defparam add_3241_24.INIT1 = 16'h5aaa;
    defparam add_3241_24.INJECT1_0 = "NO";
    defparam add_3241_24.INJECT1_1 = "NO";
    FD1P3IX dd__i2 (.D(n667[2]), .SP(clk_c_enable_118), .CD(n5106), .CK(clk_c), 
            .Q(dd[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd__i2.GSR = "DISABLED";
    FD1P3IX dd__i3 (.D(n667[3]), .SP(clk_c_enable_118), .CD(n5106), .CK(clk_c), 
            .Q(dd[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dd__i3.GSR = "DISABLED";
    FD1P3IX de__i1 (.D(n627[1]), .SP(clk_c_enable_121), .CD(n5108), .CK(clk_c), 
            .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de__i1.GSR = "DISABLED";
    CCU2D tmp_1607_add_4_15 (.A0(tmp[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18584), .COUT(n18585), .S0(n113[13]), .S1(n113[14]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_15.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_15.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_15.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_15.INJECT1_1 = "NO";
    FD1P3IX de__i2 (.D(n627[2]), .SP(clk_c_enable_121), .CD(n5108), .CK(clk_c), 
            .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de__i2.GSR = "DISABLED";
    FD1P3IX de__i3 (.D(n627[3]), .SP(clk_c_enable_121), .CD(n5108), .CK(clk_c), 
            .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam de__i3.GSR = "DISABLED";
    FD1P3IX df__i1 (.D(n585[1]), .SP(clk_c_enable_124), .CD(n5110), .CK(clk_c), 
            .Q(df[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df__i1.GSR = "DISABLED";
    FD1P3IX df__i2 (.D(n585[2]), .SP(clk_c_enable_124), .CD(n5110), .CK(clk_c), 
            .Q(df[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df__i2.GSR = "DISABLED";
    FD1P3IX df__i3 (.D(n585[3]), .SP(clk_c_enable_124), .CD(n5110), .CK(clk_c), 
            .Q(df[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam df__i3.GSR = "DISABLED";
    FD1P3IX dg__i1 (.D(n541[1]), .SP(clk_c_enable_127), .CD(clk_c_enable_130), 
            .CK(clk_c), .Q(dg[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg__i1.GSR = "DISABLED";
    FD1P3IX dg__i2 (.D(n541[2]), .SP(clk_c_enable_127), .CD(clk_c_enable_130), 
            .CK(clk_c), .Q(dg[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg__i2.GSR = "DISABLED";
    FD1P3IX dg__i3 (.D(n541[3]), .SP(clk_c_enable_127), .CD(clk_c_enable_130), 
            .CK(clk_c), .Q(dg[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dg__i3.GSR = "DISABLED";
    FD1P3IX dh__i1 (.D(n495[1]), .SP(clk_c_enable_130), .CD(n2252), .CK(clk_c), 
            .Q(dh[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh__i1.GSR = "DISABLED";
    FD1P3IX dh__i2 (.D(n495[2]), .SP(clk_c_enable_130), .CD(n2252), .CK(clk_c), 
            .Q(dh[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh__i2.GSR = "DISABLED";
    FD1P3IX dh__i3 (.D(n495[3]), .SP(clk_c_enable_130), .CD(n2252), .CK(clk_c), 
            .Q(dh[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam dh__i3.GSR = "DISABLED";
    FD1P3AX DataF_4___i2 (.D(DataF_4__31__N_2470[1]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[4][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_4___i2.GSR = "DISABLED";
    LUT4 i2_2_lut_rep_87_3_lut (.A(n21), .B(n45_adj_3535), .C(n19727), 
         .Z(n20546)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_rep_87_3_lut.init = 16'h8080;
    CCU2D tmp_1607_add_4_13 (.A0(tmp[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18583), .COUT(n18584), .S0(n113[11]), .S1(n113[12]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_13.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_13.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_13.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_13.INJECT1_1 = "NO";
    CCU2D add_3141_6 (.A0(n11644[3]), .B0(n345), .C0(GND_net), .D0(GND_net), 
          .A1(n271), .B1(n344), .C1(GND_net), .D1(GND_net), .CIN(n18504), 
          .COUT(n18505), .S0(n12301[4]), .S1(n12301[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_6.INIT0 = 16'h5666;
    defparam add_3141_6.INIT1 = 16'h5666;
    defparam add_3141_6.INJECT1_0 = "NO";
    defparam add_3141_6.INJECT1_1 = "NO";
    FD1P3AX DataF_4___i3 (.D(DataF_4__31__N_2470[2]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[4][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_4___i3.GSR = "DISABLED";
    FD1P3AX DataF_4___i4 (.D(DataF_4__31__N_2470[3]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[4][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_4___i4.GSR = "DISABLED";
    FD1P3AX DataF_3___i2 (.D(DataF_3__31__N_2502[1]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[3][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_3___i2.GSR = "DISABLED";
    FD1P3AX DataF_3___i3 (.D(DataF_3__31__N_2502[2]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[3][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_3___i3.GSR = "DISABLED";
    FD1P3AX DataF_3___i4 (.D(DataF_3__31__N_2502[3]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[3][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_3___i4.GSR = "DISABLED";
    FD1P3AX DataF_2___i2 (.D(DataF_2__31__N_2534[1]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[2][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_2___i2.GSR = "DISABLED";
    FD1P3AX DataF_2___i3 (.D(DataF_2__31__N_2534[2]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[2][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_2___i3.GSR = "DISABLED";
    FD1P3AX DataF_2___i4 (.D(DataF_2__31__N_2534[3]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[2][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_2___i4.GSR = "DISABLED";
    FD1P3AX DataF_1___i2 (.D(DataF_1__31__N_2566[1]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[1][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_1___i2.GSR = "DISABLED";
    FD1P3AX DataF_1___i3 (.D(DataF_1__31__N_2566[2]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[1][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_1___i3.GSR = "DISABLED";
    FD1P3AX DataF_1___i4 (.D(DataF_1__31__N_2566[3]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[1][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_1___i4.GSR = "DISABLED";
    FD1P3AX DataF_0___i2 (.D(DataF_0__31__N_2598[1]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[0][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_0___i2.GSR = "DISABLED";
    FD1P3AX DataF_0___i3 (.D(DataF_0__31__N_2598[2]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[0][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_0___i3.GSR = "DISABLED";
    FD1P3AX DataF_0___i4 (.D(DataF_0__31__N_2598[3]), .SP(clk_c_enable_150), 
            .CK(clk_c), .Q(\tempF[0][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/labcode6/impl1/source/tof.vhd(50[5] 190[13])
    defparam DataF_0___i4.GSR = "DISABLED";
    LUT4 i7108_2_lut (.A(n271), .B(n349), .Z(Fahrenheit[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7108_2_lut.init = 16'h6666;
    CCU2D tmp_1607_add_4_11 (.A0(tmp[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18582), .COUT(n18583), .S0(n113[9]), .S1(n113[10]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_11.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_11.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_11.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_11.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_9 (.A0(tmp[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18581), 
          .COUT(n18582), .S0(n113[7]), .S1(n113[8]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_9.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_9.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_9.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_9.INJECT1_1 = "NO";
    CCU2D add_3241_22 (.A0(n14118[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18450), .COUT(n18451), .S0(n14281[20]), .S1(n14281[21]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_22.INIT0 = 16'h5aaa;
    defparam add_3241_22.INIT1 = 16'h5aaa;
    defparam add_3241_22.INJECT1_0 = "NO";
    defparam add_3241_22.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_7 (.A0(tmp[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18580), 
          .COUT(n18581), .S0(n113[5]), .S1(n113[6]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_7.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_7.INJECT1_1 = "NO";
    CCU2D add_3141_4 (.A0(n11644[1]), .B0(n347), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[2]), .B1(n346), .C1(GND_net), .D1(GND_net), .CIN(n18503), 
          .COUT(n18504), .S0(n12301[2]), .S1(n12301[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_4.INIT0 = 16'h5666;
    defparam add_3141_4.INIT1 = 16'h5666;
    defparam add_3141_4.INJECT1_0 = "NO";
    defparam add_3141_4.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_5 (.A0(tmp[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18579), 
          .COUT(n18580), .S0(n113[3]), .S1(n113[4]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_5.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_5.INJECT1_1 = "NO";
    CCU2D add_3241_20 (.A0(n14118[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18449), .COUT(n18450), .S0(n14281[18]), .S1(n14281[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_20.INIT0 = 16'h5aaa;
    defparam add_3241_20.INIT1 = 16'h5aaa;
    defparam add_3241_20.INJECT1_0 = "NO";
    defparam add_3241_20.INJECT1_1 = "NO";
    CCU2D add_3141_2 (.A0(n271), .B0(n349), .C0(GND_net), .D0(GND_net), 
          .A1(n11644[0]), .B1(n348), .C1(GND_net), .D1(GND_net), .COUT(n18503), 
          .S1(n12301[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3141_2.INIT0 = 16'h7000;
    defparam add_3141_2.INIT1 = 16'h5666;
    defparam add_3141_2.INJECT1_0 = "NO";
    defparam add_3141_2.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_106 (.A(n20535), .B(dg[0]), .C(dg[3]), .D(n19843), 
         .Z(n493)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_106.init = 16'h0080;
    LUT4 i2889_2_lut_3_lut (.A(n493), .B(clk_c_enable_150), .C(dh[0]), 
         .Z(n15_adj_3543[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i2889_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i8211_2_lut (.A(dg[2]), .B(dg[1]), .Z(n19843)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8211_2_lut.init = 16'heeee;
    CCU2D tmp_1607_add_4_3 (.A0(tmp[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18578), 
          .COUT(n18579), .S0(n113[1]), .S1(n113[2]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp_1607_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp_1607_add_4_3.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_3.INJECT1_1 = "NO";
    CCU2D add_3241_18 (.A0(n14118[15]), .B0(n173), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18448), .COUT(n18449), .S0(n14281[16]), .S1(n14281[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_18.INIT0 = 16'h5666;
    defparam add_3241_18.INIT1 = 16'h5aaa;
    defparam add_3241_18.INJECT1_0 = "NO";
    defparam add_3241_18.INJECT1_1 = "NO";
    CCU2D tmp_1607_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n18578), .S1(n113[0]));   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607_add_4_1.INIT0 = 16'hF000;
    defparam tmp_1607_add_4_1.INIT1 = 16'h0555;
    defparam tmp_1607_add_4_1.INJECT1_0 = "NO";
    defparam tmp_1607_add_4_1.INJECT1_1 = "NO";
    CCU2D add_2992_24 (.A0(n9533[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18576), .S0(n9476[22]), .S1(n9476[23]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_24.INIT0 = 16'h5aaa;
    defparam add_2992_24.INIT1 = 16'h5aaa;
    defparam add_2992_24.INJECT1_0 = "NO";
    defparam add_2992_24.INJECT1_1 = "NO";
    CCU2D add_3241_16 (.A0(n14118[13]), .B0(n175), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[14]), .B1(n174), .C1(GND_net), .D1(GND_net), .CIN(n18447), 
          .COUT(n18448), .S0(n14281[14]), .S1(n14281[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_16.INIT0 = 16'h5666;
    defparam add_3241_16.INIT1 = 16'h5666;
    defparam add_3241_16.INJECT1_0 = "NO";
    defparam add_3241_16.INJECT1_1 = "NO";
    CCU2D add_2992_22 (.A0(n9533[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18575), .COUT(n18576), .S0(n9476[20]), .S1(n9476[21]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_22.INIT0 = 16'h5aaa;
    defparam add_2992_22.INIT1 = 16'h5aaa;
    defparam add_2992_22.INJECT1_0 = "NO";
    defparam add_2992_22.INJECT1_1 = "NO";
    CCU2D add_2992_20 (.A0(n9533[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18574), .COUT(n18575), .S0(n9476[18]), .S1(n9476[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_20.INIT0 = 16'h5aaa;
    defparam add_2992_20.INIT1 = 16'h5aaa;
    defparam add_2992_20.INJECT1_0 = "NO";
    defparam add_2992_20.INJECT1_1 = "NO";
    CCU2D add_2992_18 (.A0(n9533[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18573), .COUT(n18574), .S0(n9476[16]), .S1(n9476[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_18.INIT0 = 16'h5aaa;
    defparam add_2992_18.INIT1 = 16'h5aaa;
    defparam add_2992_18.INJECT1_0 = "NO";
    defparam add_2992_18.INJECT1_1 = "NO";
    CCU2D add_3241_14 (.A0(n14118[11]), .B0(n177), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[12]), .B1(n176), .C1(GND_net), .D1(GND_net), .CIN(n18446), 
          .COUT(n18447), .S0(n14281[12]), .S1(n14281[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_14.INIT0 = 16'h5666;
    defparam add_3241_14.INIT1 = 16'h5666;
    defparam add_3241_14.INJECT1_0 = "NO";
    defparam add_3241_14.INJECT1_1 = "NO";
    CCU2D add_2992_16 (.A0(n9533[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18572), .COUT(n18573), .S0(n9476[14]), .S1(n9476[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_16.INIT0 = 16'h5aaa;
    defparam add_2992_16.INIT1 = 16'h5aaa;
    defparam add_2992_16.INJECT1_0 = "NO";
    defparam add_2992_16.INJECT1_1 = "NO";
    CCU2D add_2992_14 (.A0(n9533[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18571), .COUT(n18572), .S0(n9476[12]), .S1(n9476[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_14.INIT0 = 16'h5aaa;
    defparam add_2992_14.INIT1 = 16'h5aaa;
    defparam add_2992_14.INJECT1_0 = "NO";
    defparam add_2992_14.INJECT1_1 = "NO";
    CCU2D add_3241_12 (.A0(n14118[9]), .B0(n179), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[10]), .B1(n178), .C1(GND_net), .D1(GND_net), .CIN(n18445), 
          .COUT(n18446), .S0(n14281[10]), .S1(n14281[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_12.INIT0 = 16'h5666;
    defparam add_3241_12.INIT1 = 16'h5666;
    defparam add_3241_12.INJECT1_0 = "NO";
    defparam add_3241_12.INJECT1_1 = "NO";
    CCU2D add_3195_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18496), 
          .S0(n13341));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_cout.INIT0 = 16'h0000;
    defparam add_3195_cout.INIT1 = 16'h0000;
    defparam add_3195_cout.INJECT1_0 = "NO";
    defparam add_3195_cout.INJECT1_1 = "NO";
    CCU2D add_3195_16 (.A0(n12922[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12937), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18495), 
          .COUT(n18496), .S0(n13324[14]), .S1(n13324[15]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_16.INIT0 = 16'h5aaa;
    defparam add_3195_16.INIT1 = 16'h5aaa;
    defparam add_3195_16.INJECT1_0 = "NO";
    defparam add_3195_16.INJECT1_1 = "NO";
    LUT4 i2205_2_lut (.A(db[1]), .B(db[0]), .Z(n741[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2205_2_lut.init = 16'h6666;
    LUT4 i2176_2_lut (.A(dc[1]), .B(dc[0]), .Z(n705[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2176_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_rep_55_4_lut (.A(n21), .B(n45_adj_3535), .C(clk_c_enable_150), 
         .D(n19750), .Z(clk_c_enable_114)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i2_3_lut_rep_55_4_lut.init = 16'hf8ff;
    LUT4 i2147_2_lut (.A(dd[1]), .B(dd[0]), .Z(n667[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2147_2_lut.init = 16'h6666;
    LUT4 i2038_2_lut_3_lut (.A(dh[1]), .B(dh[0]), .C(dh[2]), .Z(n495[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2038_2_lut_3_lut.init = 16'h7878;
    LUT4 i2045_3_lut_4_lut (.A(dh[1]), .B(dh[0]), .C(dh[2]), .D(dh[3]), 
         .Z(n495[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2045_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut (.A(n21), .B(n45_adj_3535), .C(clk_c_enable_150), 
         .Z(n5104)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i2067_2_lut_3_lut (.A(dg[1]), .B(dg[0]), .C(dg[2]), .Z(n541[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2067_2_lut_3_lut.init = 16'h7878;
    LUT4 i2074_3_lut_4_lut (.A(dg[1]), .B(dg[0]), .C(dg[2]), .D(dg[3]), 
         .Z(n541[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2074_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_83_3_lut_4_lut (.A(n21), .B(n45_adj_3535), .C(n19742), 
         .D(n19727), .Z(n20542)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_83_3_lut_4_lut.init = 16'h8000;
    LUT4 i378_4_lut (.A(n493), .B(clk_c_enable_150), .C(n8), .D(dh[0]), 
         .Z(n2252)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i378_4_lut.init = 16'heccc;
    LUT4 i2096_2_lut_3_lut (.A(df[1]), .B(df[0]), .C(df[2]), .Z(n585[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2096_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.A(n21), .B(n45_adj_3535), .C(clk_c_enable_150), 
         .D(n19727), .Z(n5106)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_107.init = 16'hf8f0;
    LUT4 i3_3_lut (.A(dh[1]), .B(dh[2]), .C(dh[3]), .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3_3_lut.init = 16'h1010;
    LUT4 i2103_3_lut_4_lut (.A(df[1]), .B(df[0]), .C(df[2]), .D(df[3]), 
         .Z(n585[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2103_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2125_2_lut_3_lut (.A(de[1]), .B(de[0]), .C(de[2]), .Z(n627[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2125_2_lut_3_lut.init = 16'h7878;
    LUT4 i2132_3_lut_4_lut (.A(de[1]), .B(de[0]), .C(de[2]), .D(de[3]), 
         .Z(n627[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2132_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2154_2_lut_3_lut (.A(dd[1]), .B(dd[0]), .C(dd[2]), .Z(n667[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2154_2_lut_3_lut.init = 16'h7878;
    LUT4 i2161_3_lut_4_lut (.A(dd[1]), .B(dd[0]), .C(dd[2]), .D(dd[3]), 
         .Z(n667[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2161_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7110_2_lut (.A(n14281[2]), .B(n50), .Z(Fahrenheit[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7110_2_lut.init = 16'h6666;
    LUT4 i2118_2_lut (.A(de[1]), .B(de[0]), .Z(n627[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2118_2_lut.init = 16'h6666;
    LUT4 i2089_2_lut (.A(df[1]), .B(df[0]), .Z(n585[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2089_2_lut.init = 16'h6666;
    LUT4 i2060_2_lut (.A(dg[1]), .B(dg[0]), .Z(n541[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2060_2_lut.init = 16'h6666;
    LUT4 i2183_2_lut_3_lut (.A(dc[1]), .B(dc[0]), .C(dc[2]), .Z(n705[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2183_2_lut_3_lut.init = 16'h7878;
    LUT4 i2031_2_lut (.A(dh[1]), .B(dh[0]), .Z(n495[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2031_2_lut.init = 16'h6666;
    LUT4 i2190_3_lut_4_lut (.A(dc[1]), .B(dc[0]), .C(dc[2]), .D(dc[3]), 
         .Z(n705[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2190_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2212_2_lut_3_lut (.A(db[1]), .B(db[0]), .C(db[2]), .Z(n741[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2212_2_lut_3_lut.init = 16'h7878;
    LUT4 i2219_3_lut_4_lut (.A(db[1]), .B(db[0]), .C(db[2]), .D(db[3]), 
         .Z(n741[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2219_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7103_2_lut (.A(n12301[1]), .B(n189), .Z(Fahrenheit[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7103_2_lut.init = 16'h6666;
    LUT4 i6965_2_lut (.A(\tempC[4][1] ), .B(\tempC[4][0] ), .Z(n18239)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam i6965_2_lut.init = 16'h2222;
    LUT4 i6967_2_lut (.A(\tempC[4][2] ), .B(\tempC[4][3] ), .Z(n18242)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam i6967_2_lut.init = 16'h6666;
    LUT4 i362_2_lut_rep_56 (.A(n14), .B(clk_c_enable_150), .Z(n20515)) /* synthesis lut_function=((B)+!A) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i362_2_lut_rep_56.init = 16'hdddd;
    LUT4 i1_3_lut_rep_127 (.A(\tempC[1][1] ), .B(\tempC[1][2] ), .C(\tempC[1][0] ), 
         .Z(n20586)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam i1_3_lut_rep_127.init = 16'ha8a8;
    LUT4 i7063_4_lut_4_lut (.A(\tempC[1][1] ), .B(\tempC[1][2] ), .C(\tempC[1][0] ), 
         .D(\tempC[1][3] ), .Z(n6_adj_3536)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (D))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam i7063_4_lut_4_lut.init = 16'hec88;
    LUT4 i7013_2_lut_rep_129 (.A(\tempC[0][0] ), .B(\tempC[0][2] ), .Z(n20588)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam i7013_2_lut_rep_129.init = 16'h8888;
    LUT4 i7024_4_lut_3_lut_rep_107_4_lut (.A(\tempC[0][0] ), .B(\tempC[0][2] ), 
         .C(\tempC[0][1] ), .D(\tempC[0][3] ), .Z(n20566)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam i7024_4_lut_3_lut_rep_107_4_lut.init = 16'hf880;
    LUT4 i374_2_lut_rep_51 (.A(n493), .B(clk_c_enable_150), .Z(clk_c_enable_130)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/tof.vhd(51[6] 189[15])
    defparam i374_2_lut_rep_51.init = 16'heeee;
    LUT4 i7029_2_lut_4_lut_4_lut (.A(\tempC[0][0] ), .B(\tempC[0][2] ), 
         .C(\tempC[0][1] ), .D(\tempC[0][3] ), .Z(n18307)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C (D)))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam i7029_2_lut_4_lut_4_lut.init = 16'hc880;
    CCU2D add_2992_12 (.A0(n9533[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18570), .COUT(n18571), .S0(n9476[10]), .S1(n9476[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_12.INIT0 = 16'h5aaa;
    defparam add_2992_12.INIT1 = 16'h5aaa;
    defparam add_2992_12.INJECT1_0 = "NO";
    defparam add_2992_12.INJECT1_1 = "NO";
    CCU2D add_3195_14 (.A0(n12922[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12922[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18494), .COUT(n18495), .S0(n13324[12]), .S1(n13324[13]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_14.INIT0 = 16'h5aaa;
    defparam add_3195_14.INIT1 = 16'h5aaa;
    defparam add_3195_14.INJECT1_0 = "NO";
    defparam add_3195_14.INJECT1_1 = "NO";
    CCU2D add_2992_10 (.A0(n9533[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18569), 
          .COUT(n18570), .S0(n9476[8]), .S1(n9476[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_10.INIT0 = 16'h5aaa;
    defparam add_2992_10.INIT1 = 16'h5aaa;
    defparam add_2992_10.INJECT1_0 = "NO";
    defparam add_2992_10.INJECT1_1 = "NO";
    CCU2D add_3195_12 (.A0(n12922[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12922[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18493), .COUT(n18494), .S0(n13324[10]), .S1(n13324[11]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_12.INIT0 = 16'h5aaa;
    defparam add_3195_12.INIT1 = 16'h5aaa;
    defparam add_3195_12.INJECT1_0 = "NO";
    defparam add_3195_12.INJECT1_1 = "NO";
    LUT4 i6937_2_lut_3_lut (.A(da[1]), .B(da[0]), .C(da[2]), .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6937_2_lut_3_lut.init = 16'h7878;
    LUT4 i6944_3_lut_4_lut (.A(da[1]), .B(da[0]), .C(da[2]), .D(da[3]), 
         .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6944_3_lut_4_lut.init = 16'h7f80;
    CCU2D add_2992_8 (.A0(n9533[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18568), 
          .COUT(n18569), .S0(n9476[6]), .S1(n9476[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_8.INIT0 = 16'h5aaa;
    defparam add_2992_8.INIT1 = 16'h5aaa;
    defparam add_2992_8.INJECT1_0 = "NO";
    defparam add_2992_8.INJECT1_1 = "NO";
    CCU2D add_2992_6 (.A0(n9533[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18567), 
          .COUT(n18568), .S0(n9476[4]), .S1(n9476[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_6.INIT0 = 16'h5aaa;
    defparam add_2992_6.INIT1 = 16'h5aaa;
    defparam add_2992_6.INJECT1_0 = "NO";
    defparam add_2992_6.INJECT1_1 = "NO";
    CCU2D add_3241_10 (.A0(n14118[7]), .B0(n181), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[8]), .B1(n180), .C1(GND_net), .D1(GND_net), .CIN(n18444), 
          .COUT(n18445), .S0(n14281[8]), .S1(n14281[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_10.INIT0 = 16'h5666;
    defparam add_3241_10.INIT1 = 16'h5666;
    defparam add_3241_10.INJECT1_0 = "NO";
    defparam add_3241_10.INJECT1_1 = "NO";
    CCU2D add_3241_8 (.A0(n14118[5]), .B0(n183), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[6]), .B1(n182), .C1(GND_net), .D1(GND_net), .CIN(n18443), 
          .COUT(n18444), .S0(n14281[6]), .S1(n14281[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_8.INIT0 = 16'h5666;
    defparam add_3241_8.INIT1 = 16'h5666;
    defparam add_3241_8.INJECT1_0 = "NO";
    defparam add_3241_8.INJECT1_1 = "NO";
    CCU2D add_2992_4 (.A0(n9533[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9533[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18566), 
          .COUT(n18567), .S0(n9476[2]), .S1(n9476[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_4.INIT0 = 16'h5aaa;
    defparam add_2992_4.INIT1 = 16'h5aaa;
    defparam add_2992_4.INJECT1_0 = "NO";
    defparam add_2992_4.INJECT1_1 = "NO";
    CCU2D add_3195_10 (.A0(n12922[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12922[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18492), .COUT(n18493), .S0(n13324[8]), .S1(n13324[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_10.INIT0 = 16'h5aaa;
    defparam add_3195_10.INIT1 = 16'h5aaa;
    defparam add_3195_10.INJECT1_0 = "NO";
    defparam add_3195_10.INJECT1_1 = "NO";
    CCU2D add_3241_6 (.A0(n14118[3]), .B0(n185), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[4]), .B1(n184), .C1(GND_net), .D1(GND_net), .CIN(n18442), 
          .COUT(n18443), .S0(n14281[4]), .S1(n14281[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_6.INIT0 = 16'h5666;
    defparam add_3241_6.INIT1 = 16'h5666;
    defparam add_3241_6.INJECT1_0 = "NO";
    defparam add_3241_6.INJECT1_1 = "NO";
    CCU2D add_3241_4 (.A0(n14118[1]), .B0(n187), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[2]), .B1(n186), .C1(GND_net), .D1(GND_net), .CIN(n18441), 
          .COUT(n18442), .S0(n14281[2]), .S1(n14281[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_4.INIT0 = 16'h5666;
    defparam add_3241_4.INIT1 = 16'h5666;
    defparam add_3241_4.INJECT1_0 = "NO";
    defparam add_3241_4.INJECT1_1 = "NO";
    CCU2D add_3195_8 (.A0(n12922[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12922[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18491), .COUT(n18492), .S0(n13324[6]), .S1(n13324[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_8.INIT0 = 16'h5aaa;
    defparam add_3195_8.INIT1 = 16'h5aaa;
    defparam add_3195_8.INJECT1_0 = "NO";
    defparam add_3195_8.INJECT1_1 = "NO";
    CCU2D add_2992_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12352[0]), .B1(\tempC[4][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18566), .S1(n9476[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_2992_2.INIT0 = 16'h7000;
    defparam add_2992_2.INIT1 = 16'h5666;
    defparam add_2992_2.INJECT1_0 = "NO";
    defparam add_2992_2.INJECT1_1 = "NO";
    CCU2D add_3195_6 (.A0(n12922[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12922[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18490), .COUT(n18491), .S0(n13324[4]), .S1(n13324[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_6.INIT0 = 16'h5aaa;
    defparam add_3195_6.INIT1 = 16'h5aaa;
    defparam add_3195_6.INJECT1_0 = "NO";
    defparam add_3195_6.INJECT1_1 = "NO";
    CCU2D add_3144_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18661), 
          .S0(n12369));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_cout.INIT0 = 16'h0000;
    defparam add_3144_cout.INIT1 = 16'h0000;
    defparam add_3144_cout.INJECT1_0 = "NO";
    defparam add_3144_cout.INJECT1_1 = "NO";
    CCU2D add_3144_16 (.A0(n12336[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12351), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18660), 
          .COUT(n18661), .S0(n12352[14]), .S1(n12352[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_16.INIT0 = 16'h5aaa;
    defparam add_3144_16.INIT1 = 16'h5aaa;
    defparam add_3144_16.INJECT1_0 = "NO";
    defparam add_3144_16.INJECT1_1 = "NO";
    LUT4 i6989_2_lut (.A(\tempC[3][1] ), .B(\tempC[3][3] ), .Z(n18265)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam i6989_2_lut.init = 16'h6666;
    CCU2D add_3241_2 (.A0(n12301[1]), .B0(n189), .C0(GND_net), .D0(GND_net), 
          .A1(n14118[0]), .B1(n188), .C1(GND_net), .D1(GND_net), .COUT(n18441), 
          .S1(Fahrenheit[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_3241_2.INIT0 = 16'h7000;
    defparam add_3241_2.INIT1 = 16'h5666;
    defparam add_3241_2.INJECT1_0 = "NO";
    defparam add_3241_2.INJECT1_1 = "NO";
    CCU2D add_3195_4 (.A0(n12922[1]), .B0(\tempC[3][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12922[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18489), .COUT(n18490), .S0(n13324[2]), 
          .S1(n13324[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_4.INIT0 = 16'h5666;
    defparam add_3195_4.INIT1 = 16'h5aaa;
    defparam add_3195_4.INJECT1_0 = "NO";
    defparam add_3195_4.INJECT1_1 = "NO";
    CCU2D add_3195_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(n13324[0]), .B1(\tempC[3][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18489), .S1(n13324[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3195_2.INIT0 = 16'h7000;
    defparam add_3195_2.INIT1 = 16'h5666;
    defparam add_3195_2.INJECT1_0 = "NO";
    defparam add_3195_2.INJECT1_1 = "NO";
    CCU2D add_3175_22 (.A0(n12898), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18564), 
          .S0(n12899[20]), .S1(n12921));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_22.INIT0 = 16'h5aaa;
    defparam add_3175_22.INIT1 = 16'h0000;
    defparam add_3175_22.INJECT1_0 = "NO";
    defparam add_3175_22.INJECT1_1 = "NO";
    CCU2D add_3144_14 (.A0(n12336[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12336[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18659), .COUT(n18660), .S0(n12352[12]), .S1(n12352[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_14.INIT0 = 16'h5aaa;
    defparam add_3144_14.INIT1 = 16'h5aaa;
    defparam add_3144_14.INJECT1_0 = "NO";
    defparam add_3144_14.INJECT1_1 = "NO";
    CCU2D add_3144_12 (.A0(n12336[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12336[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18658), .COUT(n18659), .S0(n12352[10]), .S1(n12352[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_12.INIT0 = 16'h5aaa;
    defparam add_3144_12.INIT1 = 16'h5aaa;
    defparam add_3144_12.INJECT1_0 = "NO";
    defparam add_3144_12.INJECT1_1 = "NO";
    CCU2D add_3144_10 (.A0(n12336[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12336[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18657), .COUT(n18658), .S0(n12352[8]), .S1(n12352[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_10.INIT0 = 16'h5aaa;
    defparam add_3144_10.INIT1 = 16'h5aaa;
    defparam add_3144_10.INJECT1_0 = "NO";
    defparam add_3144_10.INJECT1_1 = "NO";
    CCU2D add_3175_20 (.A0(n12879[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18563), .COUT(n18564), .S0(n12899[18]), .S1(n12899[19]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_20.INIT0 = 16'h5aaa;
    defparam add_3175_20.INIT1 = 16'h5aaa;
    defparam add_3175_20.INJECT1_0 = "NO";
    defparam add_3175_20.INJECT1_1 = "NO";
    CCU2D add_3144_8 (.A0(n12336[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12336[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18656), .COUT(n18657), .S0(n12352[6]), .S1(n12352[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_8.INIT0 = 16'h5aaa;
    defparam add_3144_8.INIT1 = 16'h5aaa;
    defparam add_3144_8.INJECT1_0 = "NO";
    defparam add_3144_8.INJECT1_1 = "NO";
    CCU2D add_3175_18 (.A0(n12879[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18562), .COUT(n18563), .S0(n12899[16]), .S1(n12899[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_18.INIT0 = 16'h5aaa;
    defparam add_3175_18.INIT1 = 16'h5aaa;
    defparam add_3175_18.INJECT1_0 = "NO";
    defparam add_3175_18.INJECT1_1 = "NO";
    CCU2D add_3175_16 (.A0(n12879[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18561), .COUT(n18562), .S0(n12899[14]), .S1(n12899[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_16.INIT0 = 16'h5aaa;
    defparam add_3175_16.INIT1 = 16'h5aaa;
    defparam add_3175_16.INJECT1_0 = "NO";
    defparam add_3175_16.INJECT1_1 = "NO";
    CCU2D add_3175_14 (.A0(n12879[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18560), .COUT(n18561), .S0(n12899[12]), .S1(n12899[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_14.INIT0 = 16'h5aaa;
    defparam add_3175_14.INIT1 = 16'h5aaa;
    defparam add_3175_14.INJECT1_0 = "NO";
    defparam add_3175_14.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clk_c_enable_150), .B(n45_adj_3535), .Z(n5102)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_3175_12 (.A0(n12879[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18559), .COUT(n18560), .S0(n12899[10]), .S1(n12899[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_12.INIT0 = 16'h5aaa;
    defparam add_3175_12.INIT1 = 16'h5aaa;
    defparam add_3175_12.INJECT1_0 = "NO";
    defparam add_3175_12.INJECT1_1 = "NO";
    CCU2D add_3210_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18487), 
          .S0(n13663));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_cout.INIT0 = 16'h0000;
    defparam add_3210_cout.INIT1 = 16'h0000;
    defparam add_3210_cout.INJECT1_0 = "NO";
    defparam add_3210_cout.INJECT1_1 = "NO";
    CCU2D add_3210_18 (.A0(n13324[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13341), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18486), 
          .COUT(n18487), .S0(n13644[16]), .S1(n13644[17]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_18.INIT0 = 16'h5aaa;
    defparam add_3210_18.INIT1 = 16'h5aaa;
    defparam add_3210_18.INJECT1_0 = "NO";
    defparam add_3210_18.INJECT1_1 = "NO";
    CCU2D add_3144_6 (.A0(n12336[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12336[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18655), .COUT(n18656), .S0(n12352[4]), .S1(n12352[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_6.INIT0 = 16'h5aaa;
    defparam add_3144_6.INIT1 = 16'h5aaa;
    defparam add_3144_6.INJECT1_0 = "NO";
    defparam add_3144_6.INJECT1_1 = "NO";
    CCU2D add_3144_4 (.A0(n12336[1]), .B0(\tempC[4][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12336[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18654), .COUT(n18655), .S0(n12352[2]), 
          .S1(n12352[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_4.INIT0 = 16'h5666;
    defparam add_3144_4.INIT1 = 16'h5aaa;
    defparam add_3144_4.INJECT1_0 = "NO";
    defparam add_3144_4.INJECT1_1 = "NO";
    CCU2D add_3175_10 (.A0(n12879[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18558), .COUT(n18559), .S0(n12899[8]), .S1(n12899[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_10.INIT0 = 16'h5aaa;
    defparam add_3175_10.INIT1 = 16'h5aaa;
    defparam add_3175_10.INJECT1_0 = "NO";
    defparam add_3175_10.INJECT1_1 = "NO";
    CCU2D add_3210_16 (.A0(n13324[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18485), .COUT(n18486), .S0(n13644[14]), .S1(n13644[15]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_16.INIT0 = 16'h5aaa;
    defparam add_3210_16.INIT1 = 16'h5aaa;
    defparam add_3210_16.INJECT1_0 = "NO";
    defparam add_3210_16.INJECT1_1 = "NO";
    CCU2D add_3210_14 (.A0(n13324[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18484), .COUT(n18485), .S0(n13644[12]), .S1(n13644[13]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_14.INIT0 = 16'h5aaa;
    defparam add_3210_14.INIT1 = 16'h5aaa;
    defparam add_3210_14.INJECT1_0 = "NO";
    defparam add_3210_14.INJECT1_1 = "NO";
    CCU2D add_3144_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][0] ), .B1(\tempC[4][1] ), .C1(\tempC[4][2] ), 
          .D1(GND_net), .COUT(n18654), .S1(n12352[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3144_2.INIT0 = 16'h7000;
    defparam add_3144_2.INIT1 = 16'h9696;
    defparam add_3144_2.INJECT1_0 = "NO";
    defparam add_3144_2.INJECT1_1 = "NO";
    CCU2D add_3210_12 (.A0(n13324[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18483), .COUT(n18484), .S0(n13644[10]), .S1(n13644[11]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_12.INIT0 = 16'h5aaa;
    defparam add_3210_12.INIT1 = 16'h5aaa;
    defparam add_3210_12.INJECT1_0 = "NO";
    defparam add_3210_12.INJECT1_1 = "NO";
    CCU2D add_3143_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18652), 
          .S0(n12351));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_cout.INIT0 = 16'h0000;
    defparam add_3143_cout.INIT1 = 16'h0000;
    defparam add_3143_cout.INJECT1_0 = "NO";
    defparam add_3143_cout.INJECT1_1 = "NO";
    CCU2D add_3210_10 (.A0(n13324[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18482), .COUT(n18483), .S0(n13644[8]), .S1(n13644[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_10.INIT0 = 16'h5aaa;
    defparam add_3210_10.INIT1 = 16'h5aaa;
    defparam add_3210_10.INJECT1_0 = "NO";
    defparam add_3210_10.INJECT1_1 = "NO";
    CCU2D add_3175_8 (.A0(n12879[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18557), .COUT(n18558), .S0(n12899[6]), .S1(n12899[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_8.INIT0 = 16'h5aaa;
    defparam add_3175_8.INIT1 = 16'h5aaa;
    defparam add_3175_8.INJECT1_0 = "NO";
    defparam add_3175_8.INJECT1_1 = "NO";
    CCU2D add_3175_6 (.A0(n12879[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18556), .COUT(n18557), .S0(n12899[4]), .S1(n12899[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_6.INIT0 = 16'h5aaa;
    defparam add_3175_6.INIT1 = 16'h5aaa;
    defparam add_3175_6.INJECT1_0 = "NO";
    defparam add_3175_6.INJECT1_1 = "NO";
    CCU2D add_3143_14 (.A0(n12323[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12335), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18651), 
          .COUT(n18652), .S0(n12336[12]), .S1(n12336[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_14.INIT0 = 16'h5aaa;
    defparam add_3143_14.INIT1 = 16'h5aaa;
    defparam add_3143_14.INJECT1_0 = "NO";
    defparam add_3143_14.INJECT1_1 = "NO";
    CCU2D add_3143_12 (.A0(n12323[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12323[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18650), .COUT(n18651), .S0(n12336[10]), .S1(n12336[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_12.INIT0 = 16'h5aaa;
    defparam add_3143_12.INIT1 = 16'h5aaa;
    defparam add_3143_12.INJECT1_0 = "NO";
    defparam add_3143_12.INJECT1_1 = "NO";
    CCU2D add_3143_10 (.A0(n12323[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12323[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18649), .COUT(n18650), .S0(n12336[8]), .S1(n12336[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_10.INIT0 = 16'h5aaa;
    defparam add_3143_10.INIT1 = 16'h5aaa;
    defparam add_3143_10.INJECT1_0 = "NO";
    defparam add_3143_10.INJECT1_1 = "NO";
    CCU2D add_3143_8 (.A0(n12323[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12323[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18648), .COUT(n18649), .S0(n12336[6]), .S1(n12336[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_8.INIT0 = 16'h5aaa;
    defparam add_3143_8.INIT1 = 16'h5aaa;
    defparam add_3143_8.INJECT1_0 = "NO";
    defparam add_3143_8.INJECT1_1 = "NO";
    CCU2D add_3143_6 (.A0(n12323[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12323[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18647), .COUT(n18648), .S0(n12336[4]), .S1(n12336[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_6.INIT0 = 16'h5aaa;
    defparam add_3143_6.INIT1 = 16'h5aaa;
    defparam add_3143_6.INJECT1_0 = "NO";
    defparam add_3143_6.INJECT1_1 = "NO";
    CCU2D add_3175_4 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(\tempC[4][3] ), 
          .D0(GND_net), .A1(n12879[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18555), .COUT(n18556), .S0(n12899[2]), 
          .S1(n12899[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_4.INIT0 = 16'h9696;
    defparam add_3175_4.INIT1 = 16'h5aaa;
    defparam add_3175_4.INJECT1_0 = "NO";
    defparam add_3175_4.INJECT1_1 = "NO";
    CCU2D add_3210_8 (.A0(n13324[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18481), .COUT(n18482), .S0(n13644[6]), .S1(n13644[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_8.INIT0 = 16'h5aaa;
    defparam add_3210_8.INIT1 = 16'h5aaa;
    defparam add_3210_8.INJECT1_0 = "NO";
    defparam add_3210_8.INJECT1_1 = "NO";
    CCU2D add_3175_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][1] ), .B1(\tempC[4][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18555), .S1(n12899[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3175_2.INIT0 = 16'h7000;
    defparam add_3175_2.INIT1 = 16'h5666;
    defparam add_3175_2.INJECT1_0 = "NO";
    defparam add_3175_2.INJECT1_1 = "NO";
    FD1S3IX da_1606__i1 (.D(n1[1]), .CK(clk_c), .CD(n20515), .Q(da[1]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1606__i1.GSR = "DISABLED";
    CCU2D add_3143_4 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(\tempC[4][3] ), 
          .D0(GND_net), .A1(n12323[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18646), .COUT(n18647), .S0(n12336[2]), 
          .S1(n12336[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_4.INIT0 = 16'h9696;
    defparam add_3143_4.INIT1 = 16'h5aaa;
    defparam add_3143_4.INJECT1_0 = "NO";
    defparam add_3143_4.INJECT1_1 = "NO";
    FD1S3IX da_1606__i2 (.D(n1[2]), .CK(clk_c), .CD(n20515), .Q(da[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1606__i2.GSR = "DISABLED";
    FD1S3IX da_1606__i3 (.D(n1[3]), .CK(clk_c), .CD(n20515), .Q(da[3]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1606__i3.GSR = "DISABLED";
    FD1S3IX tmp_1607__i1 (.D(n113[1]), .CK(clk_c), .CD(n2252), .Q(tmp[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i1.GSR = "DISABLED";
    FD1S3IX tmp_1607__i2 (.D(n113[2]), .CK(clk_c), .CD(n2252), .Q(tmp[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i2.GSR = "DISABLED";
    FD1S3IX tmp_1607__i3 (.D(n113[3]), .CK(clk_c), .CD(n2252), .Q(tmp[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i3.GSR = "DISABLED";
    FD1S3IX tmp_1607__i4 (.D(n113[4]), .CK(clk_c), .CD(n2252), .Q(tmp[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i4.GSR = "DISABLED";
    FD1S3IX tmp_1607__i5 (.D(n113[5]), .CK(clk_c), .CD(n2252), .Q(tmp[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i5.GSR = "DISABLED";
    FD1S3IX tmp_1607__i6 (.D(n113[6]), .CK(clk_c), .CD(n2252), .Q(tmp[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i6.GSR = "DISABLED";
    FD1S3IX tmp_1607__i7 (.D(n113[7]), .CK(clk_c), .CD(n2252), .Q(tmp[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i7.GSR = "DISABLED";
    FD1S3IX tmp_1607__i8 (.D(n113[8]), .CK(clk_c), .CD(n2252), .Q(tmp[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i8.GSR = "DISABLED";
    FD1S3IX tmp_1607__i9 (.D(n113[9]), .CK(clk_c), .CD(n2252), .Q(tmp[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i9.GSR = "DISABLED";
    FD1S3IX tmp_1607__i10 (.D(n113[10]), .CK(clk_c), .CD(n2252), .Q(tmp[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i10.GSR = "DISABLED";
    FD1S3IX tmp_1607__i11 (.D(n113[11]), .CK(clk_c), .CD(n2252), .Q(tmp[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i11.GSR = "DISABLED";
    FD1S3IX tmp_1607__i12 (.D(n113[12]), .CK(clk_c), .CD(n2252), .Q(tmp[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i12.GSR = "DISABLED";
    FD1S3IX tmp_1607__i13 (.D(n113[13]), .CK(clk_c), .CD(n2252), .Q(tmp[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i13.GSR = "DISABLED";
    FD1S3IX tmp_1607__i14 (.D(n113[14]), .CK(clk_c), .CD(n2252), .Q(tmp[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i14.GSR = "DISABLED";
    FD1S3IX tmp_1607__i15 (.D(n113[15]), .CK(clk_c), .CD(n2252), .Q(tmp[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i15.GSR = "DISABLED";
    FD1S3IX tmp_1607__i16 (.D(n113[16]), .CK(clk_c), .CD(n2252), .Q(tmp[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i16.GSR = "DISABLED";
    FD1S3IX tmp_1607__i17 (.D(n113[17]), .CK(clk_c), .CD(n2252), .Q(tmp[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i17.GSR = "DISABLED";
    FD1S3IX tmp_1607__i18 (.D(n113[18]), .CK(clk_c), .CD(n2252), .Q(tmp[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i18.GSR = "DISABLED";
    FD1S3IX tmp_1607__i19 (.D(n113[19]), .CK(clk_c), .CD(n2252), .Q(tmp[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i19.GSR = "DISABLED";
    FD1S3IX tmp_1607__i20 (.D(n113[20]), .CK(clk_c), .CD(n2252), .Q(tmp[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i20.GSR = "DISABLED";
    FD1S3IX tmp_1607__i21 (.D(n113[21]), .CK(clk_c), .CD(n2252), .Q(tmp[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i21.GSR = "DISABLED";
    FD1S3IX tmp_1607__i22 (.D(n113[22]), .CK(clk_c), .CD(n2252), .Q(tmp[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i22.GSR = "DISABLED";
    FD1S3IX tmp_1607__i23 (.D(n113[23]), .CK(clk_c), .CD(n2252), .Q(tmp[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i23.GSR = "DISABLED";
    FD1S3IX tmp_1607__i24 (.D(n113[24]), .CK(clk_c), .CD(n2252), .Q(tmp[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i24.GSR = "DISABLED";
    FD1S3IX tmp_1607__i25 (.D(n113[25]), .CK(clk_c), .CD(n2252), .Q(tmp[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i25.GSR = "DISABLED";
    FD1S3IX tmp_1607__i26 (.D(n113[26]), .CK(clk_c), .CD(n2252), .Q(tmp[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/tof.vhd(126[10:13])
    defparam tmp_1607__i26.GSR = "DISABLED";
    CCU2D add_3210_6 (.A0(n13324[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13324[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18480), .COUT(n18481), .S0(n13644[4]), .S1(n13644[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_6.INIT0 = 16'h5aaa;
    defparam add_3210_6.INIT1 = 16'h5aaa;
    defparam add_3210_6.INJECT1_0 = "NO";
    defparam add_3210_6.INJECT1_1 = "NO";
    CCU2D add_3143_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[4][1] ), .B1(\tempC[4][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18646), .S1(n12336[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3143_2.INIT0 = 16'h7000;
    defparam add_3143_2.INIT1 = 16'h5666;
    defparam add_3143_2.INJECT1_0 = "NO";
    defparam add_3143_2.INJECT1_1 = "NO";
    CCU2D add_3210_4 (.A0(n13324[1]), .B0(\tempC[3][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n13324[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18479), .COUT(n18480), .S0(n13644[2]), 
          .S1(n13644[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_4.INIT0 = 16'h5666;
    defparam add_3210_4.INIT1 = 16'h5aaa;
    defparam add_3210_4.INJECT1_0 = "NO";
    defparam add_3210_4.INJECT1_1 = "NO";
    CCU2D add_3142_12 (.A0(n11713), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18553), 
          .S0(n12323[10]), .S1(n12335));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_12.INIT0 = 16'h5aaa;
    defparam add_3142_12.INIT1 = 16'h0000;
    defparam add_3142_12.INJECT1_0 = "NO";
    defparam add_3142_12.INJECT1_1 = "NO";
    CCU2D add_3142_10 (.A0(n11703[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11703[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18552), .COUT(n18553), .S0(n12323[8]), .S1(n12323[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_10.INIT0 = 16'h5aaa;
    defparam add_3142_10.INIT1 = 16'h5aaa;
    defparam add_3142_10.INJECT1_0 = "NO";
    defparam add_3142_10.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18434), .S0(clk_c_enable_150));
    defparam sub_972_add_2_cout.INIT0 = 16'h0000;
    defparam sub_972_add_2_cout.INIT1 = 16'h0000;
    defparam sub_972_add_2_cout.INJECT1_0 = "NO";
    defparam sub_972_add_2_cout.INJECT1_1 = "NO";
    CCU2D add_3210_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(n13324[0]), .B1(\tempC[3][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18479), .S1(n13644[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3210_2.INIT0 = 16'h7000;
    defparam add_3210_2.INIT1 = 16'h5666;
    defparam add_3210_2.INJECT1_0 = "NO";
    defparam add_3210_2.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_32 (.A0(Fahrenheit[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Fahrenheit[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18433), .COUT(n18434));
    defparam sub_972_add_2_32.INIT0 = 16'hf555;
    defparam sub_972_add_2_32.INIT1 = 16'h5555;
    defparam sub_972_add_2_32.INJECT1_0 = "NO";
    defparam sub_972_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_30 (.A0(Fahrenheit[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Fahrenheit[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18432), .COUT(n18433));
    defparam sub_972_add_2_30.INIT0 = 16'hf555;
    defparam sub_972_add_2_30.INIT1 = 16'hf555;
    defparam sub_972_add_2_30.INJECT1_0 = "NO";
    defparam sub_972_add_2_30.INJECT1_1 = "NO";
    CCU2D add_3142_8 (.A0(n11703[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11703[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18551), .COUT(n18552), .S0(n12323[6]), .S1(n12323[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_8.INIT0 = 16'h5aaa;
    defparam add_3142_8.INIT1 = 16'h5aaa;
    defparam add_3142_8.INJECT1_0 = "NO";
    defparam add_3142_8.INJECT1_1 = "NO";
    CCU2D add_3142_6 (.A0(n11703[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11703[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18550), .COUT(n18551), .S0(n12323[4]), .S1(n12323[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_6.INIT0 = 16'h5aaa;
    defparam add_3142_6.INIT1 = 16'h5aaa;
    defparam add_3142_6.INJECT1_0 = "NO";
    defparam add_3142_6.INJECT1_1 = "NO";
    CCU2D add_3113_8 (.A0(\tempC[0][3] ), .B0(n18307), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18753), 
          .S0(n11790[6]), .S1(n11798));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3113_8.INIT0 = 16'h7888;
    defparam add_3113_8.INIT1 = 16'h0000;
    defparam add_3113_8.INJECT1_0 = "NO";
    defparam add_3113_8.INJECT1_1 = "NO";
    CCU2D add_3113_6 (.A0(\tempC[0][2] ), .B0(n20566), .C0(GND_net), .D0(GND_net), 
          .A1(\tempC[0][3] ), .B1(n18307), .C1(GND_net), .D1(GND_net), 
          .CIN(n18752), .COUT(n18753), .S0(n11790[4]), .S1(n11790[5]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3113_6.INIT0 = 16'h9666;
    defparam add_3113_6.INIT1 = 16'h9666;
    defparam add_3113_6.INJECT1_0 = "NO";
    defparam add_3113_6.INJECT1_1 = "NO";
    CCU2D add_3113_4 (.A0(\tempC[0][0] ), .B0(\tempC[0][2] ), .C0(\tempC[0][3] ), 
          .D0(GND_net), .A1(n18295), .B1(n20588), .C1(GND_net), .D1(GND_net), 
          .CIN(n18751), .COUT(n18752), .S0(n11790[2]), .S1(n11790[3]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3113_4.INIT0 = 16'h9696;
    defparam add_3113_4.INIT1 = 16'h9666;
    defparam add_3113_4.INJECT1_0 = "NO";
    defparam add_3113_4.INJECT1_1 = "NO";
    CCU2D add_3113_2 (.A0(\tempC[0][0] ), .B0(\tempC[0][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[0][1] ), .B1(\tempC[0][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18751), .S1(n11790[1]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3113_2.INIT0 = 16'h7000;
    defparam add_3113_2.INIT1 = 16'h5666;
    defparam add_3113_2.INJECT1_0 = "NO";
    defparam add_3113_2.INJECT1_1 = "NO";
    CCU2D add_3110_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18749), 
          .S0(n11771));   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam add_3110_cout.INIT0 = 16'h0000;
    defparam add_3110_cout.INIT1 = 16'h0000;
    defparam add_3110_cout.INJECT1_0 = "NO";
    defparam add_3110_cout.INJECT1_1 = "NO";
    CCU2D add_3110_6 (.A0(\tempC[1][3] ), .B0(n6_adj_3536), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[1][0] ), .B1(\tempC[1][1] ), .C1(\tempC[1][2] ), 
          .D1(\tempC[1][3] ), .CIN(n18748), .COUT(n18749), .S0(n11764[4]), 
          .S1(n11764[5]));   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam add_3110_6.INIT0 = 16'h9666;
    defparam add_3110_6.INIT1 = 16'hf800;
    defparam add_3110_6.INJECT1_0 = "NO";
    defparam add_3110_6.INJECT1_1 = "NO";
    CCU2D add_3110_4 (.A0(\tempC[1][3] ), .B0(\tempC[1][1] ), .C0(\tempC[1][2] ), 
          .D0(\tempC[1][0] ), .A1(n18336), .B1(n20586), .C1(GND_net), 
          .D1(GND_net), .CIN(n18747), .COUT(n18748), .S0(n11764[2]), 
          .S1(n11764[3]));   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam add_3110_4.INIT0 = 16'h5a96;
    defparam add_3110_4.INIT1 = 16'h9666;
    defparam add_3110_4.INJECT1_0 = "NO";
    defparam add_3110_4.INJECT1_1 = "NO";
    CCU2D add_3110_2 (.A0(\tempC[1][0] ), .B0(\tempC[1][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[1][0] ), .B1(\tempC[1][1] ), .C1(\tempC[1][2] ), 
          .D1(GND_net), .COUT(n18747), .S1(n11764[1]));   // c:/labcode6/impl1/source/tof.vhd(45[71:81])
    defparam add_3110_2.INIT0 = 16'h7000;
    defparam add_3110_2.INIT1 = 16'h9696;
    defparam add_3110_2.INJECT1_0 = "NO";
    defparam add_3110_2.INJECT1_1 = "NO";
    CCU2D add_3151_10 (.A0(n11798), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18745), 
          .S0(n12445[8]), .S1(n12455));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3151_10.INIT0 = 16'h5aaa;
    defparam add_3151_10.INIT1 = 16'h0000;
    defparam add_3151_10.INJECT1_0 = "NO";
    defparam add_3151_10.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_28 (.A0(tmp[26]), .B0(Fahrenheit[26]), .C0(GND_net), 
          .D0(GND_net), .A1(Fahrenheit[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18431), .COUT(n18432));
    defparam sub_972_add_2_28.INIT0 = 16'h5999;
    defparam sub_972_add_2_28.INIT1 = 16'hf555;
    defparam sub_972_add_2_28.INJECT1_0 = "NO";
    defparam sub_972_add_2_28.INJECT1_1 = "NO";
    CCU2D add_3223_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18477), 
          .S0(n13934));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_cout.INIT0 = 16'h0000;
    defparam add_3223_cout.INIT1 = 16'h0000;
    defparam add_3223_cout.INJECT1_0 = "NO";
    defparam add_3223_cout.INJECT1_1 = "NO";
    CCU2D add_3142_4 (.A0(n11703[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11703[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18549), .COUT(n18550), .S0(n12323[2]), .S1(n12323[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_4.INIT0 = 16'h5aaa;
    defparam add_3142_4.INIT1 = 16'h5aaa;
    defparam add_3142_4.INJECT1_0 = "NO";
    defparam add_3142_4.INJECT1_1 = "NO";
    CCU2D add_3151_8 (.A0(n11790[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11790[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18744), .COUT(n18745), .S0(n12445[6]), .S1(n12445[7]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3151_8.INIT0 = 16'h5aaa;
    defparam add_3151_8.INIT1 = 16'h5aaa;
    defparam add_3151_8.INJECT1_0 = "NO";
    defparam add_3151_8.INJECT1_1 = "NO";
    CCU2D add_3151_6 (.A0(n11790[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11790[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18743), .COUT(n18744), .S0(n12445[4]), .S1(n12445[5]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3151_6.INIT0 = 16'h5aaa;
    defparam add_3151_6.INIT1 = 16'h5aaa;
    defparam add_3151_6.INJECT1_0 = "NO";
    defparam add_3151_6.INJECT1_1 = "NO";
    CCU2D add_3151_4 (.A0(n11790[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11790[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18742), .COUT(n18743), .S0(n12445[2]), .S1(n12445[3]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3151_4.INIT0 = 16'h5aaa;
    defparam add_3151_4.INIT1 = 16'h5aaa;
    defparam add_3151_4.INJECT1_0 = "NO";
    defparam add_3151_4.INJECT1_1 = "NO";
    CCU2D add_3151_2 (.A0(\tempC[0][0] ), .B0(\tempC[0][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(n11790[0]), .B1(\tempC[0][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18742), .S1(n12445[1]));   // c:/labcode6/impl1/source/tof.vhd(45[87:97])
    defparam add_3151_2.INIT0 = 16'h7000;
    defparam add_3151_2.INIT1 = 16'h5666;
    defparam add_3151_2.INJECT1_0 = "NO";
    defparam add_3151_2.INJECT1_1 = "NO";
    CCU2D add_3150_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18740), 
          .S0(n12444));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3150_cout.INIT0 = 16'h0000;
    defparam add_3150_cout.INIT1 = 16'h0000;
    defparam add_3150_cout.INJECT1_0 = "NO";
    defparam add_3150_cout.INJECT1_1 = "NO";
    CCU2D add_3150_8 (.A0(\tempC[2][2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18739), .COUT(n18740), .S0(n12435[6]), 
          .S1(n12435[7]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3150_8.INIT0 = 16'h5aaa;
    defparam add_3150_8.INIT1 = 16'h5aaa;
    defparam add_3150_8.INJECT1_0 = "NO";
    defparam add_3150_8.INJECT1_1 = "NO";
    CCU2D add_3150_6 (.A0(\tempC[2][0] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][1] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18738), .COUT(n18739), .S0(n12435[4]), 
          .S1(n12435[5]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3150_6.INIT0 = 16'h5aaa;
    defparam add_3150_6.INIT1 = 16'h5aaa;
    defparam add_3150_6.INJECT1_0 = "NO";
    defparam add_3150_6.INJECT1_1 = "NO";
    CCU2D add_3150_4 (.A0(\tempC[2][2] ), .B0(\tempC[2][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18737), .COUT(n18738), .S0(n12435[2]), 
          .S1(n12435[3]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3150_4.INIT0 = 16'h5666;
    defparam add_3150_4.INIT1 = 16'h5aaa;
    defparam add_3150_4.INJECT1_0 = "NO";
    defparam add_3150_4.INJECT1_1 = "NO";
    CCU2D add_3150_2 (.A0(\tempC[2][0] ), .B0(\tempC[2][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][1] ), .B1(\tempC[2][2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18737), .S1(n12435[1]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3150_2.INIT0 = 16'h7000;
    defparam add_3150_2.INIT1 = 16'h5666;
    defparam add_3150_2.INJECT1_0 = "NO";
    defparam add_3150_2.INJECT1_1 = "NO";
    CCU2D add_3178_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18735), 
          .S0(n12965));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_cout.INIT0 = 16'h0000;
    defparam add_3178_cout.INIT1 = 16'h0000;
    defparam add_3178_cout.INJECT1_0 = "NO";
    defparam add_3178_cout.INJECT1_1 = "NO";
    CCU2D add_3178_14 (.A0(n12938[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12949), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18734), 
          .COUT(n18735), .S0(n12950[12]), .S1(n12950[13]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_14.INIT0 = 16'h5aaa;
    defparam add_3178_14.INIT1 = 16'h5aaa;
    defparam add_3178_14.INJECT1_0 = "NO";
    defparam add_3178_14.INJECT1_1 = "NO";
    CCU2D add_3178_12 (.A0(n12938[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12938[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18733), .COUT(n18734), .S0(n12950[10]), .S1(n12950[11]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_12.INIT0 = 16'h5aaa;
    defparam add_3178_12.INIT1 = 16'h5aaa;
    defparam add_3178_12.INJECT1_0 = "NO";
    defparam add_3178_12.INJECT1_1 = "NO";
    CCU2D add_3178_10 (.A0(n12938[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12938[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18732), .COUT(n18733), .S0(n12950[8]), .S1(n12950[9]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_10.INIT0 = 16'h5aaa;
    defparam add_3178_10.INIT1 = 16'h5aaa;
    defparam add_3178_10.INJECT1_0 = "NO";
    defparam add_3178_10.INJECT1_1 = "NO";
    CCU2D add_3223_20 (.A0(n13644[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13663), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18476), 
          .COUT(n18477), .S0(n13913[18]), .S1(n13913[19]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_20.INIT0 = 16'h5aaa;
    defparam add_3223_20.INIT1 = 16'h5aaa;
    defparam add_3223_20.INJECT1_0 = "NO";
    defparam add_3223_20.INJECT1_1 = "NO";
    CCU2D add_3142_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12352[0]), .B1(\tempC[4][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18549), .S1(n12323[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3142_2.INIT0 = 16'h7000;
    defparam add_3142_2.INIT1 = 16'h5666;
    defparam add_3142_2.INJECT1_0 = "NO";
    defparam add_3142_2.INJECT1_1 = "NO";
    CCU2D add_3223_18 (.A0(n13644[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18475), .COUT(n18476), .S0(n13913[16]), .S1(n13913[17]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_18.INIT0 = 16'h5aaa;
    defparam add_3223_18.INIT1 = 16'h5aaa;
    defparam add_3223_18.INJECT1_0 = "NO";
    defparam add_3223_18.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_26 (.A0(tmp[24]), .B0(Fahrenheit[24]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[25]), .B1(Fahrenheit[25]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18430), .COUT(n18431));
    defparam sub_972_add_2_26.INIT0 = 16'h5999;
    defparam sub_972_add_2_26.INIT1 = 16'h5999;
    defparam sub_972_add_2_26.INJECT1_0 = "NO";
    defparam sub_972_add_2_26.INJECT1_1 = "NO";
    CCU2D add_3174_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18547), 
          .S0(n12898));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_cout.INIT0 = 16'h0000;
    defparam add_3174_cout.INIT1 = 16'h0000;
    defparam add_3174_cout.INJECT1_0 = "NO";
    defparam add_3174_cout.INJECT1_1 = "NO";
    CCU2D add_3223_16 (.A0(n13644[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18474), .COUT(n18475), .S0(n13913[14]), .S1(n13913[15]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_16.INIT0 = 16'h5aaa;
    defparam add_3223_16.INIT1 = 16'h5aaa;
    defparam add_3223_16.INJECT1_0 = "NO";
    defparam add_3223_16.INJECT1_1 = "NO";
    CCU2D add_3174_18 (.A0(n12352[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12369), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18546), 
          .COUT(n18547), .S0(n12879[16]), .S1(n12879[17]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_18.INIT0 = 16'h5aaa;
    defparam add_3174_18.INIT1 = 16'h5aaa;
    defparam add_3174_18.INJECT1_0 = "NO";
    defparam add_3174_18.INJECT1_1 = "NO";
    CCU2D add_3174_16 (.A0(n12352[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18545), .COUT(n18546), .S0(n12879[14]), .S1(n12879[15]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_16.INIT0 = 16'h5aaa;
    defparam add_3174_16.INIT1 = 16'h5aaa;
    defparam add_3174_16.INJECT1_0 = "NO";
    defparam add_3174_16.INJECT1_1 = "NO";
    CCU2D add_3174_14 (.A0(n12352[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18544), .COUT(n18545), .S0(n12879[12]), .S1(n12879[13]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_14.INIT0 = 16'h5aaa;
    defparam add_3174_14.INIT1 = 16'h5aaa;
    defparam add_3174_14.INJECT1_0 = "NO";
    defparam add_3174_14.INJECT1_1 = "NO";
    CCU2D add_3223_14 (.A0(n13644[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18473), .COUT(n18474), .S0(n13913[12]), .S1(n13913[13]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_14.INIT0 = 16'h5aaa;
    defparam add_3223_14.INIT1 = 16'h5aaa;
    defparam add_3223_14.INJECT1_0 = "NO";
    defparam add_3223_14.INJECT1_1 = "NO";
    CCU2D add_3174_12 (.A0(n12352[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18543), .COUT(n18544), .S0(n12879[10]), .S1(n12879[11]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_12.INIT0 = 16'h5aaa;
    defparam add_3174_12.INIT1 = 16'h5aaa;
    defparam add_3174_12.INJECT1_0 = "NO";
    defparam add_3174_12.INJECT1_1 = "NO";
    CCU2D add_3174_10 (.A0(n12352[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18542), .COUT(n18543), .S0(n12879[8]), .S1(n12879[9]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_10.INIT0 = 16'h5aaa;
    defparam add_3174_10.INIT1 = 16'h5aaa;
    defparam add_3174_10.INJECT1_0 = "NO";
    defparam add_3174_10.INJECT1_1 = "NO";
    CCU2D add_3174_8 (.A0(n12352[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18541), .COUT(n18542), .S0(n12879[6]), .S1(n12879[7]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_8.INIT0 = 16'h5aaa;
    defparam add_3174_8.INIT1 = 16'h5aaa;
    defparam add_3174_8.INJECT1_0 = "NO";
    defparam add_3174_8.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_24 (.A0(tmp[22]), .B0(Fahrenheit[22]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[23]), .B1(Fahrenheit[23]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18429), .COUT(n18430));
    defparam sub_972_add_2_24.INIT0 = 16'h5999;
    defparam sub_972_add_2_24.INIT1 = 16'h5999;
    defparam sub_972_add_2_24.INJECT1_0 = "NO";
    defparam sub_972_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_22 (.A0(tmp[20]), .B0(Fahrenheit[20]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[21]), .B1(Fahrenheit[21]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18428), .COUT(n18429));
    defparam sub_972_add_2_22.INIT0 = 16'h5999;
    defparam sub_972_add_2_22.INIT1 = 16'h5999;
    defparam sub_972_add_2_22.INJECT1_0 = "NO";
    defparam sub_972_add_2_22.INJECT1_1 = "NO";
    CCU2D add_3178_8 (.A0(n12938[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12938[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18731), .COUT(n18732), .S0(n12950[6]), .S1(n12950[7]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_8.INIT0 = 16'h5aaa;
    defparam add_3178_8.INIT1 = 16'h5aaa;
    defparam add_3178_8.INJECT1_0 = "NO";
    defparam add_3178_8.INJECT1_1 = "NO";
    CCU2D add_3178_6 (.A0(n12938[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12938[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18730), .COUT(n18731), .S0(n12950[4]), .S1(n12950[5]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_6.INIT0 = 16'h5aaa;
    defparam add_3178_6.INIT1 = 16'h5aaa;
    defparam add_3178_6.INJECT1_0 = "NO";
    defparam add_3178_6.INJECT1_1 = "NO";
    CCU2D add_3178_4 (.A0(\tempC[2][2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][0] ), .B1(\tempC[2][3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n18729), .COUT(n18730), .S0(n12950[2]), 
          .S1(n12950[3]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_4.INIT0 = 16'h5aaa;
    defparam add_3178_4.INIT1 = 16'h9666;
    defparam add_3178_4.INJECT1_0 = "NO";
    defparam add_3178_4.INJECT1_1 = "NO";
    CCU2D add_3178_2 (.A0(\tempC[2][0] ), .B0(\tempC[2][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[2][1] ), .B1(\tempC[2][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18729), .S1(n12950[1]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3178_2.INIT0 = 16'h7000;
    defparam add_3178_2.INIT1 = 16'h5666;
    defparam add_3178_2.INJECT1_0 = "NO";
    defparam add_3178_2.INJECT1_1 = "NO";
    CCU2D add_3177_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18727), 
          .S0(n12949));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_cout.INIT0 = 16'h0000;
    defparam add_3177_cout.INIT1 = 16'h0000;
    defparam add_3177_cout.INJECT1_0 = "NO";
    defparam add_3177_cout.INJECT1_1 = "NO";
    CCU2D add_3177_10 (.A0(n12435[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12444), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18726), 
          .COUT(n18727), .S0(n12938[8]), .S1(n12938[9]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_10.INIT0 = 16'h5aaa;
    defparam add_3177_10.INIT1 = 16'h5aaa;
    defparam add_3177_10.INJECT1_0 = "NO";
    defparam add_3177_10.INJECT1_1 = "NO";
    CCU2D add_3177_8 (.A0(n12435[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12435[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18725), .COUT(n18726), .S0(n12938[6]), .S1(n12938[7]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_8.INIT0 = 16'h5aaa;
    defparam add_3177_8.INIT1 = 16'h5aaa;
    defparam add_3177_8.INJECT1_0 = "NO";
    defparam add_3177_8.INJECT1_1 = "NO";
    CCU2D add_3177_6 (.A0(n12435[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12435[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18724), .COUT(n18725), .S0(n12938[4]), .S1(n12938[5]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_6.INIT0 = 16'h5aaa;
    defparam add_3177_6.INIT1 = 16'h5aaa;
    defparam add_3177_6.INJECT1_0 = "NO";
    defparam add_3177_6.INJECT1_1 = "NO";
    CCU2D add_3177_4 (.A0(n12435[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12435[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18723), .COUT(n18724), .S0(n12938[2]), .S1(n12938[3]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_4.INIT0 = 16'h5aaa;
    defparam add_3177_4.INIT1 = 16'h5aaa;
    defparam add_3177_4.INJECT1_0 = "NO";
    defparam add_3177_4.INJECT1_1 = "NO";
    CCU2D add_3177_2 (.A0(\tempC[2][0] ), .B0(\tempC[2][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12435[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18723), .S1(n12938[1]));   // c:/labcode6/impl1/source/tof.vhd(45[54:64])
    defparam add_3177_2.INIT0 = 16'h7000;
    defparam add_3177_2.INIT1 = 16'h5aaa;
    defparam add_3177_2.INJECT1_0 = "NO";
    defparam add_3177_2.INJECT1_1 = "NO";
    CCU2D add_3147_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18721), 
          .S0(n12404));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_cout.INIT0 = 16'h0000;
    defparam add_3147_cout.INIT1 = 16'h0000;
    defparam add_3147_cout.INJECT1_0 = "NO";
    defparam add_3147_cout.INJECT1_1 = "NO";
    CCU2D add_3147_12 (.A0(n12379[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12390), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18720), 
          .COUT(n18721), .S0(n12391[10]), .S1(n12391[11]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_12.INIT0 = 16'h5aaa;
    defparam add_3147_12.INIT1 = 16'h5aaa;
    defparam add_3147_12.INJECT1_0 = "NO";
    defparam add_3147_12.INJECT1_1 = "NO";
    CCU2D add_3147_10 (.A0(n12379[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12379[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18719), .COUT(n18720), .S0(n12391[8]), .S1(n12391[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_10.INIT0 = 16'h5aaa;
    defparam add_3147_10.INIT1 = 16'h5aaa;
    defparam add_3147_10.INJECT1_0 = "NO";
    defparam add_3147_10.INJECT1_1 = "NO";
    CCU2D add_3147_8 (.A0(n12379[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12379[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18718), .COUT(n18719), .S0(n12391[6]), .S1(n12391[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_8.INIT0 = 16'h5aaa;
    defparam add_3147_8.INIT1 = 16'h5aaa;
    defparam add_3147_8.INJECT1_0 = "NO";
    defparam add_3147_8.INJECT1_1 = "NO";
    CCU2D add_3147_6 (.A0(n12379[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12379[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18717), .COUT(n18718), .S0(n12391[4]), .S1(n12391[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_6.INIT0 = 16'h5aaa;
    defparam add_3147_6.INIT1 = 16'h5aaa;
    defparam add_3147_6.INJECT1_0 = "NO";
    defparam add_3147_6.INJECT1_1 = "NO";
    CCU2D add_3147_4 (.A0(n12379[1]), .B0(\tempC[3][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12379[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18716), .COUT(n18717), .S0(n12391[2]), 
          .S1(n12391[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_4.INIT0 = 16'h5666;
    defparam add_3147_4.INIT1 = 16'h5aaa;
    defparam add_3147_4.INJECT1_0 = "NO";
    defparam add_3147_4.INJECT1_1 = "NO";
    CCU2D add_3147_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\tempC[3][0] ), .B1(\tempC[3][1] ), .C1(\tempC[3][2] ), 
          .D1(GND_net), .COUT(n18716), .S1(n12391[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3147_2.INIT0 = 16'h7000;
    defparam add_3147_2.INIT1 = 16'h9696;
    defparam add_3147_2.INJECT1_0 = "NO";
    defparam add_3147_2.INJECT1_1 = "NO";
    CCU2D add_3146_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18714), 
          .S0(n12390));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_cout.INIT0 = 16'h0000;
    defparam add_3146_cout.INIT1 = 16'h0000;
    defparam add_3146_cout.INJECT1_0 = "NO";
    defparam add_3146_cout.INJECT1_1 = "NO";
    CCU2D add_3146_10 (.A0(n12370[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12378), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18713), 
          .COUT(n18714), .S0(n12379[8]), .S1(n12379[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_10.INIT0 = 16'h5aaa;
    defparam add_3146_10.INIT1 = 16'h5aaa;
    defparam add_3146_10.INJECT1_0 = "NO";
    defparam add_3146_10.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_20 (.A0(tmp[18]), .B0(Fahrenheit[18]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[19]), .B1(Fahrenheit[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18427), .COUT(n18428));
    defparam sub_972_add_2_20.INIT0 = 16'h5999;
    defparam sub_972_add_2_20.INIT1 = 16'h5999;
    defparam sub_972_add_2_20.INJECT1_0 = "NO";
    defparam sub_972_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_18 (.A0(tmp[16]), .B0(Fahrenheit[16]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[17]), .B1(Fahrenheit[17]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18426), .COUT(n18427));
    defparam sub_972_add_2_18.INIT0 = 16'h5999;
    defparam sub_972_add_2_18.INIT1 = 16'h5999;
    defparam sub_972_add_2_18.INJECT1_0 = "NO";
    defparam sub_972_add_2_18.INJECT1_1 = "NO";
    CCU2D add_3223_12 (.A0(n13644[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18472), .COUT(n18473), .S0(n13913[10]), .S1(n13913[11]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_12.INIT0 = 16'h5aaa;
    defparam add_3223_12.INIT1 = 16'h5aaa;
    defparam add_3223_12.INJECT1_0 = "NO";
    defparam add_3223_12.INJECT1_1 = "NO";
    CCU2D add_3174_6 (.A0(n12352[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18540), .COUT(n18541), .S0(n12879[4]), .S1(n12879[5]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_6.INIT0 = 16'h5aaa;
    defparam add_3174_6.INIT1 = 16'h5aaa;
    defparam add_3174_6.INJECT1_0 = "NO";
    defparam add_3174_6.INJECT1_1 = "NO";
    CCU2D add_3223_10 (.A0(n13644[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18471), .COUT(n18472), .S0(n13913[8]), .S1(n13913[9]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_10.INIT0 = 16'h5aaa;
    defparam add_3223_10.INIT1 = 16'h5aaa;
    defparam add_3223_10.INJECT1_0 = "NO";
    defparam add_3223_10.INJECT1_1 = "NO";
    CCU2D add_3223_8 (.A0(n13644[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18470), .COUT(n18471), .S0(n13913[6]), .S1(n13913[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_8.INIT0 = 16'h5aaa;
    defparam add_3223_8.INIT1 = 16'h5aaa;
    defparam add_3223_8.INJECT1_0 = "NO";
    defparam add_3223_8.INJECT1_1 = "NO";
    CCU2D add_3223_6 (.A0(n13644[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18469), .COUT(n18470), .S0(n13913[4]), .S1(n13913[5]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_6.INIT0 = 16'h5aaa;
    defparam add_3223_6.INIT1 = 16'h5aaa;
    defparam add_3223_6.INJECT1_0 = "NO";
    defparam add_3223_6.INJECT1_1 = "NO";
    CCU2D add_3174_4 (.A0(n12352[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12352[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18539), .COUT(n18540), .S0(n12879[2]), .S1(n12879[3]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_4.INIT0 = 16'h5aaa;
    defparam add_3174_4.INIT1 = 16'h5aaa;
    defparam add_3174_4.INJECT1_0 = "NO";
    defparam add_3174_4.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_16 (.A0(tmp[14]), .B0(Fahrenheit[14]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[15]), .B1(Fahrenheit[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18425), .COUT(n18426));
    defparam sub_972_add_2_16.INIT0 = 16'h5999;
    defparam sub_972_add_2_16.INIT1 = 16'h5999;
    defparam sub_972_add_2_16.INJECT1_0 = "NO";
    defparam sub_972_add_2_16.INJECT1_1 = "NO";
    CCU2D add_3223_4 (.A0(n13644[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13644[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18468), .COUT(n18469), .S0(n13913[2]), .S1(n13913[3]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_4.INIT0 = 16'h5aaa;
    defparam add_3223_4.INIT1 = 16'h5aaa;
    defparam add_3223_4.INJECT1_0 = "NO";
    defparam add_3223_4.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_14 (.A0(tmp[12]), .B0(Fahrenheit[12]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[13]), .B1(Fahrenheit[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18424), .COUT(n18425));
    defparam sub_972_add_2_14.INIT0 = 16'h5999;
    defparam sub_972_add_2_14.INIT1 = 16'h5999;
    defparam sub_972_add_2_14.INJECT1_0 = "NO";
    defparam sub_972_add_2_14.INJECT1_1 = "NO";
    CCU2D add_3174_2 (.A0(\tempC[4][0] ), .B0(\tempC[4][2] ), .C0(GND_net), 
          .D0(GND_net), .A1(n12352[0]), .B1(\tempC[4][3] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n18539), .S1(n12879[1]));   // c:/labcode6/impl1/source/tof.vhd(45[17:27])
    defparam add_3174_2.INIT0 = 16'h7000;
    defparam add_3174_2.INIT1 = 16'h5666;
    defparam add_3174_2.INJECT1_0 = "NO";
    defparam add_3174_2.INJECT1_1 = "NO";
    CCU2D add_3223_2 (.A0(\tempC[3][0] ), .B0(\tempC[3][3] ), .C0(GND_net), 
          .D0(GND_net), .A1(n13324[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18468), .S1(n13913[1]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3223_2.INIT0 = 16'h7000;
    defparam add_3223_2.INIT1 = 16'h5aaa;
    defparam add_3223_2.INJECT1_0 = "NO";
    defparam add_3223_2.INJECT1_1 = "NO";
    CCU2D add_3146_8 (.A0(n12370[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12370[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18712), .COUT(n18713), .S0(n12379[6]), .S1(n12379[7]));   // c:/labcode6/impl1/source/tof.vhd(45[36:46])
    defparam add_3146_8.INIT0 = 16'h5aaa;
    defparam add_3146_8.INIT1 = 16'h5aaa;
    defparam add_3146_8.INJECT1_0 = "NO";
    defparam add_3146_8.INJECT1_1 = "NO";
    CCU2D sub_972_add_2_12 (.A0(tmp[10]), .B0(Fahrenheit[10]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[11]), .B1(Fahrenheit[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18423), .COUT(n18424));
    defparam sub_972_add_2_12.INIT0 = 16'h5999;
    defparam sub_972_add_2_12.INIT1 = 16'h5999;
    defparam sub_972_add_2_12.INJECT1_0 = "NO";
    defparam sub_972_add_2_12.INJECT1_1 = "NO";
    CCU2D add_2813_26 (.A0(n14308), .B0(n26), .C0(GND_net), .D0(GND_net), 
          .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18536), 
          .S0(Fahrenheit[30]), .S1(Fahrenheit[31]));   // c:/labcode6/impl1/source/tof.vhd(45[17:35])
    defparam add_2813_26.INIT0 = 16'h5666;
    defparam add_2813_26.INIT1 = 16'hfaaa;
    defparam add_2813_26.INJECT1_0 = "NO";
    defparam add_2813_26.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module encode
//

module encode (\temp[4][3] , \temp[0][0] , \temp[1][0] , \temp[2][0] , 
            \temp[3][0] , \temp[4][0] , \temp[0][1] , \temp[0][2] , 
            \temp[0][3] , \temp[0][4] , \temp[1][1] , \temp[1][2] , 
            \temp[1][3] , \temp[1][4] , \temp[2][1] , \temp[2][2] , 
            \temp[2][3] , \temp[3][1] , \temp[3][2] , \temp[3][3] , 
            \temp[4][1] , \temp[4][2] , n20504, n15, n9, n15_adj_4, 
            n15_adj_5, mode, n9_adj_8, \en_N_3200[0] , \tempF[3][0] , 
            n9_adj_9, \tempF[2][0] , n20135, n6408, n15_adj_6, n30, 
            n1843, \linecode[69] , n20160, n6410, n6409, \tempF[3][3] , 
            n20561, n1842, n20623, n6, \tempF[4][3] , \tempF[0][1] , 
            n9_adj_10, \tempF[3][2] , \tempF[2][2] , \tempF[2][3] , 
            \tempF[1][3] , \tempF[1][1] , \tempF[2][1] , \linecode_7__N_2688[3] , 
            \tempF[1][2] , \tempF[0][3] , \tempF[4][2] , \tempF[4][1] , 
            \tempF[0][2] , \tempF[4][0] , \tempF[0][0] , \tempF[3][1] , 
            \tempF[1][0] , kmodstate, kmodstate_ls, clk_c_enable_151, 
            \linecode[16] , n19876, \linecode[32] , n1846, n1845, 
            n19952, n30_adj_7, \linecode[39] , \linecode[23] , \linecode_87__N_2650[1] , 
            n20917, n20918, n20923, n15501, n20926, n15499, \linecode[71] );
    output \temp[4][3] ;
    output \temp[0][0] ;
    output \temp[1][0] ;
    output \temp[2][0] ;
    output \temp[3][0] ;
    output \temp[4][0] ;
    output \temp[0][1] ;
    output \temp[0][2] ;
    output \temp[0][3] ;
    output \temp[0][4] ;
    output \temp[1][1] ;
    output \temp[1][2] ;
    output \temp[1][3] ;
    output \temp[1][4] ;
    output \temp[2][1] ;
    output \temp[2][2] ;
    output \temp[2][3] ;
    output \temp[3][1] ;
    output \temp[3][2] ;
    output \temp[3][3] ;
    output \temp[4][1] ;
    output \temp[4][2] ;
    output n20504;
    output n15;
    input [3:0]n9;
    output n15_adj_4;
    output n15_adj_5;
    input [1:0]mode;
    input [3:0]n9_adj_8;
    input \en_N_3200[0] ;
    input \tempF[3][0] ;
    input [3:0]n9_adj_9;
    input \tempF[2][0] ;
    output n20135;
    input n6408;
    output n15_adj_6;
    output n30;
    input n1843;
    output \linecode[69] ;
    output n20160;
    input n6410;
    input n6409;
    input \tempF[3][3] ;
    output n20561;
    input n1842;
    input n20623;
    output n6;
    input \tempF[4][3] ;
    input \tempF[0][1] ;
    input [3:0]n9_adj_10;
    input \tempF[3][2] ;
    input \tempF[2][2] ;
    input \tempF[2][3] ;
    input \tempF[1][3] ;
    input \tempF[1][1] ;
    input \tempF[2][1] ;
    output \linecode_7__N_2688[3] ;
    input \tempF[1][2] ;
    input \tempF[0][3] ;
    input \tempF[4][2] ;
    input \tempF[4][1] ;
    input \tempF[0][2] ;
    input \tempF[4][0] ;
    input \tempF[0][0] ;
    input \tempF[3][1] ;
    input \tempF[1][0] ;
    input kmodstate;
    input kmodstate_ls;
    output clk_c_enable_151;
    output \linecode[16] ;
    output n19876;
    output \linecode[32] ;
    input n1846;
    input n1845;
    output n19952;
    output n30_adj_7;
    output \linecode[39] ;
    output \linecode[23] ;
    output \linecode_87__N_2650[1] ;
    output n20917;
    output n20918;
    input n20923;
    output n15501;
    input n20926;
    output n15499;
    output \linecode[71] ;
    
    wire temp_4__2__N_2772 /* synthesis is_clock=1, SET_AS_NETWORK=\DE/temp_4__2__N_2772 */ ;   // c:/labcode6/impl1/source/encode.vhd(19[9:13])
    
    wire mode_1_derived_1, temp_4__31__N_2727, temp_4__31__N_2726;
    wire [4:0]n3741;
    wire [4:0]n3744;
    wire [4:0]n3740;
    wire [4:0]n3742;
    wire [1:0]n1807;
    
    wire n20559;
    wire [31:0]temp_0__4__N_2820;
    wire [31:0]temp_1__4__N_2805;
    
    wire temp_4__2__N_2767, temp_4__2__N_2730, n20539, temp_2__4__N_3061, 
        n20606, n20605, n20523;
    wire [1:0]temp_4__2__N_2768;
    
    wire n20408, n20530, n20609, n20608, n20919, n20613, n20413, 
        n20612, n20420, n20920, n20547, n20557, n20573, n20533, 
        n20534;
    wire [31:0]temp_1__4__N_2930;
    
    wire n19868, n20522, n20525;
    wire [31:0]temp_2__4__N_2790;
    
    wire n4, n20787, n20788, n20422, n20527, n20524, n20537, n20526, 
        n4_adj_3524, n20574, n20554;
    wire [31:0]temp_0__4__N_2865;
    
    wire n20556, n20786, n20528;
    wire [7:0]linecode_7__N_2688;
    
    wire n5692, n20520;
    wire [31:0]temp_3__4__N_2775;
    
    wire temp_3__4__N_2780, temp_0__4__N_2828, temp_2__4__N_2795, temp_2__4__N_2792, 
        temp_1__4__N_2807, n20304, temp_1__4__N_2813, n20316, temp_1__4__N_2810, 
        temp_0__4__N_2822, temp_0__4__N_2825, temp_4__2__N_2770, n20303, 
        temp_0__4__N_2831, temp_1__4__N_2816, n20317;
    
    FD1S1D temp_4__31__I_31_i1 (.D(temp_4__31__N_2726), .CK(mode_1_derived_1), 
           .CD(temp_4__31__N_2727), .Q(\temp[4][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_4__31__I_31_i1.GSR = "DISABLED";
    FD1S1A temp_0__4__I_54_i1 (.D(n3741[0]), .CK(temp_4__2__N_2772), .Q(\temp[0][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_0__4__I_54_i1.GSR = "DISABLED";
    FD1S1A temp_1__4__I_48_i1 (.D(n3744[0]), .CK(temp_4__2__N_2772), .Q(\temp[1][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_1__4__I_48_i1.GSR = "DISABLED";
    FD1S1A temp_2__4__I_0_2810_i1 (.D(n3740[0]), .CK(temp_4__2__N_2772), 
           .Q(\temp[2][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_2__4__I_0_2810_i1.GSR = "DISABLED";
    FD1S1A temp_3__4__I_0_2808_i1 (.D(n3742[0]), .CK(temp_4__2__N_2772), 
           .Q(\temp[3][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_3__4__I_0_2808_i1.GSR = "DISABLED";
    FD1S1A temp_4__2__I_0_i1 (.D(n1807[0]), .CK(temp_4__2__N_2772), .Q(\temp[4][0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_4__2__I_0_i1.GSR = "DISABLED";
    FD1S1A temp_0__4__I_54_i2 (.D(n3741[1]), .CK(temp_4__2__N_2772), .Q(\temp[0][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_0__4__I_54_i2.GSR = "DISABLED";
    FD1S1A temp_0__4__I_54_i3 (.D(n3741[2]), .CK(temp_4__2__N_2772), .Q(\temp[0][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_0__4__I_54_i3.GSR = "DISABLED";
    FD1S1A temp_0__4__I_54_i4 (.D(n3741[3]), .CK(temp_4__2__N_2772), .Q(\temp[0][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_0__4__I_54_i4.GSR = "DISABLED";
    FD1S1I temp_0__4__I_54_i5 (.D(temp_0__4__N_2820[4]), .CK(temp_4__2__N_2772), 
           .CD(n20559), .Q(\temp[0][4] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_0__4__I_54_i5.GSR = "DISABLED";
    FD1S1A temp_1__4__I_48_i2 (.D(n3744[1]), .CK(temp_4__2__N_2772), .Q(\temp[1][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_1__4__I_48_i2.GSR = "DISABLED";
    FD1S1A temp_1__4__I_48_i3 (.D(n3744[2]), .CK(temp_4__2__N_2772), .Q(\temp[1][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_1__4__I_48_i3.GSR = "DISABLED";
    FD1S1A temp_1__4__I_48_i4 (.D(n3744[3]), .CK(temp_4__2__N_2772), .Q(\temp[1][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_1__4__I_48_i4.GSR = "DISABLED";
    FD1S1I temp_1__4__I_48_i5 (.D(temp_1__4__N_2805[4]), .CK(temp_4__2__N_2772), 
           .CD(n20559), .Q(\temp[1][4] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_1__4__I_48_i5.GSR = "DISABLED";
    FD1S1A temp_2__4__I_0_2810_i2 (.D(n3740[1]), .CK(temp_4__2__N_2772), 
           .Q(\temp[2][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_2__4__I_0_2810_i2.GSR = "DISABLED";
    FD1S1A temp_2__4__I_0_2810_i3 (.D(n3740[2]), .CK(temp_4__2__N_2772), 
           .Q(\temp[2][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_2__4__I_0_2810_i3.GSR = "DISABLED";
    FD1S1A temp_2__4__I_0_2810_i4 (.D(n3740[3]), .CK(temp_4__2__N_2772), 
           .Q(\temp[2][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_2__4__I_0_2810_i4.GSR = "DISABLED";
    FD1S1A temp_3__4__I_0_2808_i2 (.D(n3742[1]), .CK(temp_4__2__N_2772), 
           .Q(\temp[3][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_3__4__I_0_2808_i2.GSR = "DISABLED";
    FD1S1A temp_3__4__I_0_2808_i3 (.D(n3742[2]), .CK(temp_4__2__N_2772), 
           .Q(\temp[3][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_3__4__I_0_2808_i3.GSR = "DISABLED";
    FD1S1A temp_3__4__I_0_2808_i4 (.D(n3742[3]), .CK(temp_4__2__N_2772), 
           .Q(\temp[3][3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_3__4__I_0_2808_i4.GSR = "DISABLED";
    FD1S1J temp_4__2__I_0_i2 (.D(temp_4__2__N_2767), .CK(temp_4__2__N_2772), 
           .PD(temp_4__31__N_2727), .Q(\temp[4][1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_4__2__I_0_i2.GSR = "DISABLED";
    FD1S1I temp_4__2__I_0_i3 (.D(temp_4__2__N_2730), .CK(temp_4__2__N_2772), 
           .CD(temp_4__31__N_2727), .Q(\temp[4][2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=11, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam temp_4__2__I_0_i3.GSR = "DISABLED";
    LUT4 n1_bdd_4_lut_4_lut_4_lut (.A(\temp[1][0] ), .B(\temp[1][3] ), .C(\temp[1][1] ), 
         .D(\temp[1][2] ), .Z(n20504)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+((D)+!C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(118[35:42])
    defparam n1_bdd_4_lut_4_lut_4_lut.init = 16'hd7cd;
    LUT4 temp_3__4__I_0_2809_Mux_3_i15_4_lut_4_lut_4_lut (.A(\temp[3][0] ), 
         .B(\temp[3][1] ), .C(\temp[3][2] ), .D(\temp[3][3] ), .Z(n15)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(104[41:48])
    defparam temp_3__4__I_0_2809_Mux_3_i15_4_lut_4_lut_4_lut.init = 16'hfd45;
    LUT4 mux_2693_i2_4_lut_4_lut_4_lut (.A(n9[2]), .B(n9[1]), .C(n9[0]), 
         .D(n20539), .Z(temp_0__4__N_2820[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam mux_2693_i2_4_lut_4_lut_4_lut.init = 16'h5695;
    LUT4 temp_2__4__I_0_Mux_3_i15_4_lut_4_lut_4_lut (.A(\temp[2][0] ), .B(\temp[2][1] ), 
         .C(\temp[2][2] ), .D(\temp[2][3] ), .Z(n15_adj_4)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(113[41:48])
    defparam temp_2__4__I_0_Mux_3_i15_4_lut_4_lut_4_lut.init = 16'hfd45;
    LUT4 \temp_1[[1__bdd_4_lut  (.A(\temp[1][1] ), .B(\temp[1][3] ), .C(\temp[1][0] ), 
         .D(\temp[1][2] ), .Z(n15_adj_5)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam \temp_1[[1__bdd_4_lut .init = 16'hce8f;
    LUT4 mux_963_i1_then_4_lut (.A(temp_2__4__N_3061), .B(mode[0]), .C(n9_adj_8[0]), 
         .D(\en_N_3200[0] ), .Z(n20606)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_963_i1_then_4_lut.init = 16'hed21;
    LUT4 mux_963_i1_else_4_lut (.A(mode[0]), .B(\tempF[3][0] ), .C(\en_N_3200[0] ), 
         .Z(n20605)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam mux_963_i1_else_4_lut.init = 16'hd8d8;
    LUT4 n6558_bdd_4_lut_8759 (.A(n9_adj_8[3]), .B(n9_adj_8[2]), .C(n9_adj_8[1]), 
         .D(n20523), .Z(temp_4__2__N_2768[0])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam n6558_bdd_4_lut_8759.init = 16'hfeee;
    LUT4 \temp_2[[2__bdd_4_lut  (.A(\temp[2][2] ), .B(\temp[2][3] ), .C(\temp[2][0] ), 
         .D(\temp[2][1] ), .Z(n20408)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !(B+(C+!(D))))) */ ;
    defparam \temp_2[[2__bdd_4_lut .init = 16'h76f7;
    LUT4 mux_961_i1_then_4_lut (.A(\en_N_3200[0] ), .B(mode[0]), .C(n20530), 
         .D(n9_adj_9[0]), .Z(n20609)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_961_i1_then_4_lut.init = 16'hed21;
    LUT4 mux_961_i1_else_4_lut (.A(mode[0]), .B(\tempF[2][0] ), .C(n9_adj_9[0]), 
         .Z(n20608)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam mux_961_i1_else_4_lut.init = 16'hd8d8;
    LUT4 \temp_3[[4__bdd_4_lut_rep_134  (.A(\temp[3][1] ), .B(\temp[3][3] ), 
         .C(\temp[3][2] ), .D(\temp[3][0] ), .Z(n20919)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam \temp_3[[4__bdd_4_lut_rep_134 .init = 16'h671f;
    LUT4 temp_0__4__I_0_Mux_7_i31_3_lut_then_4_lut (.A(\temp[0][4] ), .B(\temp[0][3] ), 
         .C(\temp[0][1] ), .D(\temp[0][2] ), .Z(n20613)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(122[35:42])
    defparam temp_0__4__I_0_Mux_7_i31_3_lut_then_4_lut.init = 16'h5114;
    LUT4 \temp_3[[4__bdd_4_lut_8653  (.A(\temp[3][1] ), .B(\temp[3][0] ), 
         .C(\temp[3][3] ), .D(\temp[3][2] ), .Z(n20413)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A !(B (C+(D))+!B (C+!(D))))) */ ;
    defparam \temp_3[[4__bdd_4_lut_8653 .init = 16'h76db;
    LUT4 temp_0__4__I_0_Mux_7_i31_3_lut_else_4_lut (.A(\temp[0][4] ), .B(\temp[0][3] ), 
         .C(\temp[0][1] ), .D(\temp[0][2] ), .Z(n20612)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(122[35:42])
    defparam temp_0__4__I_0_Mux_7_i31_3_lut_else_4_lut.init = 16'h5457;
    LUT4 \temp_2[[4__bdd_4_lut  (.A(\temp[2][1] ), .B(\temp[2][0] ), .C(\temp[2][3] ), 
         .D(\temp[2][2] ), .Z(n20420)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A !(B (C+(D))+!B (C+!(D))))) */ ;
    defparam \temp_2[[4__bdd_4_lut .init = 16'h76db;
    LUT4 \temp_2[[4__bdd_4_lut_8652_rep_135  (.A(\temp[2][2] ), .B(\temp[2][0] ), 
         .C(\temp[2][1] ), .D(\temp[2][3] ), .Z(n20920)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B (C (D))))) */ ;
    defparam \temp_2[[4__bdd_4_lut_8652_rep_135 .init = 16'h1dd7;
    LUT4 i1_2_lut_rep_74_4_lut (.A(n9[3]), .B(n20547), .C(n20557), .D(n20573), 
         .Z(n20533)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam i1_2_lut_rep_74_4_lut.init = 16'h1300;
    LUT4 \temp_1[[2__bdd_4_lut  (.A(\temp[1][2] ), .B(\temp[1][3] ), .C(\temp[1][1] ), 
         .D(\temp[1][0] ), .Z(n20135)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam \temp_1[[2__bdd_4_lut .init = 16'h7f67;
    LUT4 i5289_2_lut_rep_75_4_lut (.A(n9[3]), .B(n20547), .C(n20557), 
         .D(n9_adj_9[0]), .Z(n20534)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i5289_2_lut_rep_75_4_lut.init = 16'hffec;
    LUT4 i2301_2_lut_4_lut (.A(n9[3]), .B(n20547), .C(n20557), .D(n9_adj_9[0]), 
         .Z(temp_1__4__N_2930[0])) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B !(D))) */ ;
    defparam i2301_2_lut_4_lut.init = 16'hec13;
    LUT4 \temp_0[[0__bdd_4_lut_8665  (.A(\temp[0][0] ), .B(\temp[0][3] ), 
         .C(\temp[0][1] ), .D(\temp[0][2] ), .Z(n19868)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam \temp_0[[0__bdd_4_lut_8665 .init = 16'hd680;
    LUT4 mux_21_i4_4_lut_4_lut (.A(n6408), .B(n20522), .C(n20525), .D(temp_2__4__N_3061), 
         .Z(temp_2__4__N_2790[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(75[8:16])
    defparam mux_21_i4_4_lut_4_lut.init = 16'ha566;
    LUT4 \temp_0[[0__bdd_4_lut  (.A(\temp[0][0] ), .B(\temp[0][3] ), .C(\temp[0][2] ), 
         .D(\temp[0][1] ), .Z(n15_adj_6)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam \temp_0[[0__bdd_4_lut .init = 16'hddc5;
    LUT4 i1_2_lut_4_lut (.A(n9[3]), .B(n20547), .C(n20557), .D(n9_adj_9[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h13ec;
    LUT4 n20787_bdd_3_lut (.A(n20787), .B(n9_adj_8[3]), .C(n9_adj_8[2]), 
         .Z(n20788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20787_bdd_3_lut.init = 16'hcaca;
    LUT4 \temp_3[[2__bdd_4_lut_4_lut  (.A(\temp[3][1] ), .B(\temp[3][0] ), 
         .C(\temp[3][3] ), .D(\temp[3][2] ), .Z(n20422)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(47[2] 128[14])
    defparam \temp_3[[2__bdd_4_lut_4_lut .init = 16'h4ffd;
    LUT4 i8463_3_lut_4_lut (.A(\temp[0][2] ), .B(\temp[0][0] ), .C(\temp[0][3] ), 
         .D(\temp[0][1] ), .Z(n30)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8463_3_lut_4_lut.init = 16'h0001;
    LUT4 temp_0__4__I_0_Mux_5_i31_4_lut (.A(n30), .B(n19868), .C(n1843), 
         .D(\temp[0][4] ), .Z(\linecode[69] )) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(122[35:42])
    defparam temp_0__4__I_0_Mux_5_i31_4_lut.init = 16'h0a3a;
    LUT4 \temp_0[[1__bdd_4_lut_8648  (.A(\temp[0][1] ), .B(\temp[0][3] ), 
         .C(\temp[0][0] ), .D(\temp[0][2] ), .Z(n20160)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A !(B+(C (D)+!C !(D))))) */ ;
    defparam \temp_0[[1__bdd_4_lut_8648 .init = 16'h5ee7;
    LUT4 i1_2_lut_rep_114 (.A(n9_adj_9[0]), .B(n9_adj_9[1]), .Z(n20573)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/encode.vhd(71[15:25])
    defparam i1_2_lut_rep_114.init = 16'heeee;
    LUT4 i2239_2_lut_rep_68 (.A(\en_N_3200[0] ), .B(n20530), .Z(n20527)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/encode.vhd(75[8:16])
    defparam i2239_2_lut_rep_68.init = 16'heeee;
    LUT4 temp_2__4__N_3061_bdd_3_lut_8577_rep_65 (.A(temp_2__4__N_3061), .B(n9_adj_8[1]), 
         .C(n9_adj_8[0]), .Z(n20524)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam temp_2__4__N_3061_bdd_3_lut_8577_rep_65.init = 16'hc8c8;
    LUT4 n3885_bdd_3_lut_8639_rep_78_4_lut (.A(n9_adj_9[0]), .B(n9_adj_9[1]), 
         .C(n9_adj_9[2]), .D(n20539), .Z(n20537)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(71[15:25])
    defparam n3885_bdd_3_lut_8639_rep_78_4_lut.init = 16'h00fe;
    LUT4 i2247_2_lut_rep_67_3_lut (.A(\en_N_3200[0] ), .B(n20530), .C(n6410), 
         .Z(n20526)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(75[8:16])
    defparam i2247_2_lut_rep_67_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n9_adj_9[0]), .B(n9_adj_9[1]), .C(n9_adj_9[2]), 
         .D(n20539), .Z(n4_adj_3524)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(71[15:25])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1834_2_lut_rep_115 (.A(n9[1]), .B(n9[0]), .Z(n20574)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/encode.vhd(63[15:23])
    defparam i1834_2_lut_rep_115.init = 16'heeee;
    LUT4 mux_2693_i3_4_lut_4_lut (.A(n9[3]), .B(n20557), .C(n20554), .D(n20539), 
         .Z(temp_0__4__N_2820[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam mux_2693_i3_4_lut_4_lut.init = 16'ha566;
    LUT4 i2252_2_lut_rep_63_3_lut_4_lut (.A(\en_N_3200[0] ), .B(n20530), 
         .C(n6409), .D(n6410), .Z(n20522)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(75[8:16])
    defparam i2252_2_lut_rep_63_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i2443_3_lut_4_lut_rep_88 (.A(n9[3]), .B(n20557), .C(temp_0__4__N_2865[1]), 
         .D(n20556), .Z(n20547)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B (C+(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam i2443_3_lut_4_lut_rep_88.init = 16'h6660;
    LUT4 i1839_2_lut_rep_95_3_lut (.A(n9[1]), .B(n9[0]), .C(n9[2]), .Z(n20554)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(63[15:23])
    defparam i1839_2_lut_rep_95_3_lut.init = 16'he0e0;
    LUT4 i2453_3_lut_rep_80_4_lut (.A(n9[3]), .B(n20557), .C(temp_0__4__N_2865[1]), 
         .D(n20556), .Z(n20539)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam i2453_3_lut_rep_80_4_lut.init = 16'heee8;
    LUT4 i2_2_lut_4_lut_4_lut (.A(n9[3]), .B(n20557), .C(temp_0__4__N_2865[1]), 
         .D(n20556), .Z(temp_0__4__N_2820[1])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam i2_2_lut_4_lut_4_lut.init = 16'h1e18;
    LUT4 n6558_bdd_4_lut_8760 (.A(mode[0]), .B(\tempF[3][3] ), .C(mode[1]), 
         .D(n6408), .Z(n20786)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (D)) */ ;
    defparam n6558_bdd_4_lut_8760.init = 16'hfd08;
    LUT4 n3920_bdd_3_lut_8589_rep_69 (.A(n20530), .B(n6410), .C(\en_N_3200[0] ), 
         .Z(n20528)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam n3920_bdd_3_lut_8589_rep_69.init = 16'hc8c8;
    LUT4 i1_4_lut_4_lut (.A(n20561), .B(n1842), .C(linecode_7__N_2688[7]), 
         .D(n20623), .Z(n6)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/labcode6/impl1/source/encode.vhd(96[7:16])
    defparam i1_4_lut_4_lut.init = 16'hf7d5;
    LUT4 i2527_2_lut_rep_66_4_lut (.A(n20530), .B(n6410), .C(\en_N_3200[0] ), 
         .D(n6409), .Z(n20525)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2527_2_lut_rep_66_4_lut.init = 16'hc800;
    LUT4 i1_2_lut_rep_97_3_lut (.A(n9[1]), .B(n9[0]), .C(n9[2]), .Z(n20556)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam i1_2_lut_rep_97_3_lut.init = 16'h8787;
    LUT4 mux_846_i3_4_lut (.A(temp_1__4__N_2930[2]), .B(n20533), .C(n20530), 
         .D(n4), .Z(temp_1__4__N_2805[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(67[4] 73[11])
    defparam mux_846_i3_4_lut.init = 16'hca3a;
    LUT4 i2368_2_lut_rep_98_3_lut (.A(n9[1]), .B(n9[0]), .C(n9[2]), .Z(n20557)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[29:37])
    defparam i2368_2_lut_rep_98_3_lut.init = 16'hf8f8;
    PFUMX i8761 (.BLUT(n20788), .ALUT(n20786), .C0(n20559), .Z(n3742[3]));
    LUT4 i4220_4_lut (.A(n9_adj_9[3]), .B(n5692), .C(n4_adj_3524), .D(n20530), 
         .Z(temp_1__4__N_2805[3])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(67[4] 73[11])
    defparam i4220_4_lut.init = 16'h5a66;
    LUT4 i3548_4_lut (.A(n6409), .B(n20526), .C(n20528), .D(temp_2__4__N_3061), 
         .Z(temp_2__4__N_2790[2])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(75[4] 81[11])
    defparam i3548_4_lut.init = 16'h5a66;
    LUT4 i3957_4_lut (.A(n9_adj_8[2]), .B(n20520), .C(n20524), .D(temp_4__2__N_2768[0]), 
         .Z(temp_3__4__N_2775[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D)))) */ ;
    defparam i3957_4_lut.init = 16'ha599;
    LUT4 tempC_4__3__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[4][3] ), 
         .D(n9_adj_8[3]), .Z(temp_4__31__N_2726)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_4__3__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_963_i3 (.BLUT(temp_3__4__N_2775[2]), .ALUT(temp_3__4__N_2780), 
          .C0(n20559), .Z(n3742[2]));
    LUT4 tempC_0__1__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[0][1] ), 
         .D(n9_adj_10[1]), .Z(temp_0__4__N_2828)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_0__1__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_3__2__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[3][2] ), 
         .D(n6409), .Z(temp_3__4__N_2780)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_3__2__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_961_i3 (.BLUT(temp_2__4__N_2790[2]), .ALUT(temp_2__4__N_2795), 
          .C0(n20559), .Z(n3740[2]));
    LUT4 tempC_2__2__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[2][2] ), 
         .D(n9_adj_9[2]), .Z(temp_2__4__N_2795)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_2__2__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_961_i4 (.BLUT(temp_2__4__N_2790[3]), .ALUT(temp_2__4__N_2792), 
          .C0(n20559), .Z(n3740[3]));
    LUT4 tempC_2__3__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[2][3] ), 
         .D(n9_adj_9[3]), .Z(temp_2__4__N_2792)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_2__3__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_1__3__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[1][3] ), 
         .D(n9[3]), .Z(temp_1__4__N_2807)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_1__3__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 temp_4__2__N_2768_0__bdd_4_lut_8755 (.A(temp_4__2__N_2768[0]), .B(temp_2__4__N_3061), 
         .C(n9_adj_8[1]), .D(n9_adj_8[0]), .Z(n20304)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam temp_4__2__N_2768_0__bdd_4_lut_8755.init = 16'h5a69;
    LUT4 tempC_1__1__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[1][1] ), 
         .D(n9[1]), .Z(temp_1__4__N_2813)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_1__1__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_965_i4 (.BLUT(temp_1__4__N_2805[3]), .ALUT(temp_1__4__N_2807), 
          .C0(n20559), .Z(n3744[3]));
    LUT4 temp_2__4__N_3061_bdd_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[2][1] ), 
         .D(n9_adj_9[1]), .Z(n20316)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam temp_2__4__N_3061_bdd_3_lut_4_lut.init = 16'hfd20;
    LUT4 \temp_4[[0__bdd_4_lut_8540  (.A(\temp[4][0] ), .B(\temp[4][3] ), 
         .C(\temp[4][2] ), .D(\temp[4][1] ), .Z(\linecode_7__N_2688[3] )) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam \temp_4[[0__bdd_4_lut_8540 .init = 16'hddc5;
    PFUMX mux_965_i2 (.BLUT(temp_1__4__N_2805[1]), .ALUT(temp_1__4__N_2813), 
          .C0(n20559), .Z(n3744[1]));
    PFUMX mux_965_i3 (.BLUT(temp_1__4__N_2805[2]), .ALUT(temp_1__4__N_2810), 
          .C0(n20559), .Z(n3744[2]));
    LUT4 tempC_1__2__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[1][2] ), 
         .D(n9[2]), .Z(temp_1__4__N_2810)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_1__2__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_0__3__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[0][3] ), 
         .D(n9_adj_10[3]), .Z(temp_0__4__N_2822)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_0__3__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_4__2__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[4][2] ), 
         .D(n9_adj_8[2]), .Z(temp_4__2__N_2730)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_4__2__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_4__1__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[4][1] ), 
         .D(n9_adj_8[1]), .Z(temp_4__2__N_2767)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_4__1__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_0__2__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[0][2] ), 
         .D(n9_adj_10[2]), .Z(temp_0__4__N_2825)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_0__2__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_4__0__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[4][0] ), 
         .D(n9_adj_8[0]), .Z(temp_4__2__N_2770)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_4__0__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX i8575 (.BLUT(n20304), .ALUT(n20303), .C0(n20559), .Z(n3742[1]));
    LUT4 tempC_0__0__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[0][0] ), 
         .D(n9_adj_10[0]), .Z(temp_0__4__N_2831)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_0__0__I_0_3_lut_4_lut.init = 16'hfd20;
    LUT4 temp_4__2__N_2768_0__bdd_3_lut_4_lut (.A(mode[0]), .B(mode[1]), 
         .C(\tempF[3][1] ), .D(n6410), .Z(n20303)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam temp_4__2__N_2768_0__bdd_3_lut_4_lut.init = 16'hfd20;
    LUT4 tempC_1__0__I_0_3_lut_4_lut (.A(mode[0]), .B(mode[1]), .C(\tempF[1][0] ), 
         .D(n9[0]), .Z(temp_1__4__N_2816)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/labcode6/impl1/source/encode.vhd(55[7:13])
    defparam tempC_1__0__I_0_3_lut_4_lut.init = 16'hfd20;
    PFUMX i8584 (.BLUT(n20317), .ALUT(n20316), .C0(n20559), .Z(n3740[1]));
    LUT4 i8453_3_lut_4_lut (.A(mode[1]), .B(mode[0]), .C(kmodstate), .D(kmodstate_ls), 
         .Z(clk_c_enable_151)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(126[35:47])
    defparam i8453_3_lut_4_lut.init = 16'h0700;
    LUT4 i5616_1_lut_2_lut (.A(mode[1]), .B(mode[0]), .Z(temp_4__2__N_2772)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/labcode6/impl1/source/encode.vhd(126[35:47])
    defparam i5616_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_4_lut_4_lut_adj_100 (.A(n20539), .B(n9_adj_9[3]), .C(n20537), 
         .D(n20530), .Z(temp_1__4__N_2805[4])) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(71[15:25])
    defparam i1_4_lut_4_lut_adj_100.init = 16'h3700;
    LUT4 i2310_2_lut_3_lut_4_lut (.A(n20539), .B(n9_adj_9[0]), .C(n9_adj_9[2]), 
         .D(n9_adj_9[1]), .Z(temp_1__4__N_2930[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i2310_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i2858_1_lut_rep_101_2_lut (.A(mode[0]), .B(mode[1]), .Z(\linecode[16] )) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/labcode6/impl1/source/encode.vhd(110[7:13])
    defparam i2858_1_lut_rep_101_2_lut.init = 16'h1111;
    PFUMX mux_962_i4 (.BLUT(temp_0__4__N_2820[3]), .ALUT(temp_0__4__N_2822), 
          .C0(n20559), .Z(n3741[3]));
    PFUMX mux_962_i3 (.BLUT(temp_0__4__N_2820[2]), .ALUT(temp_0__4__N_2825), 
          .C0(n20559), .Z(n3741[2]));
    PFUMX mux_962_i2 (.BLUT(temp_0__4__N_2820[1]), .ALUT(temp_0__4__N_2828), 
          .C0(n20559), .Z(n3741[1]));
    PFUMX mux_965_i1 (.BLUT(temp_1__4__N_2930[0]), .ALUT(temp_1__4__N_2816), 
          .C0(n20559), .Z(n3744[0]));
    LUT4 temp_2__4__N_3061_bdd_4_lut_8763 (.A(temp_2__4__N_3061), .B(n20530), 
         .C(n6410), .D(\en_N_3200[0] ), .Z(n20317)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam temp_2__4__N_3061_bdd_4_lut_8763.init = 16'h5a69;
    LUT4 i2312_2_lut_3_lut_4_lut (.A(n20539), .B(n9_adj_9[0]), .C(n9_adj_9[2]), 
         .D(n9_adj_9[1]), .Z(n5692)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2312_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i8240_2_lut_3_lut (.A(\temp[1][0] ), .B(\temp[1][1] ), .C(\temp[1][2] ), 
         .Z(n19876)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i8240_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i2_3_lut_rep_102_4_lut (.A(\temp[4][0] ), .B(\temp[4][2] ), .C(\temp[4][1] ), 
         .D(\temp[4][3] ), .Z(n20561)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(99[34:41])
    defparam i2_3_lut_rep_102_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n9[2]), .B(n20574), .C(n9[3]), .D(n20547), 
         .Z(temp_0__4__N_2820[4])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/labcode6/impl1/source/encode.vhd(63[15:23])
    defparam i1_3_lut_4_lut.init = 16'h0700;
    LUT4 i5300_2_lut_3_lut_3_lut (.A(mode[1]), .B(mode[0]), .Z(\linecode[32] )) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/encode.vhd(113[41:48])
    defparam i5300_2_lut_3_lut_3_lut.init = 16'heeee;
    LUT4 i8484_3_lut_3_lut (.A(n1846), .B(n1845), .Z(n19952)) /* synthesis lut_function=((B)+!A) */ ;   // c:/labcode6/impl1/source/encode.vhd(113[41:48])
    defparam i8484_3_lut_3_lut.init = 16'hdddd;
    LUT4 i8468_3_lut_4_lut (.A(\temp[1][1] ), .B(\temp[1][2] ), .C(\temp[1][3] ), 
         .D(\temp[1][0] ), .Z(n30_adj_7)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/labcode6/impl1/source/encode.vhd(118[35:42])
    defparam i8468_3_lut_4_lut.init = 16'h0001;
    LUT4 \temp_4[[0__bdd_4_lut_8534  (.A(\temp[4][0] ), .B(\temp[4][3] ), 
         .C(\temp[4][1] ), .D(\temp[4][2] ), .Z(linecode_7__N_2688[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam \temp_4[[0__bdd_4_lut_8534 .init = 16'hf67d;
    LUT4 i2269_2_lut_rep_64 (.A(n9_adj_8[0]), .B(temp_2__4__N_3061), .Z(n20523)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/encode.vhd(83[8:16])
    defparam i2269_2_lut_rep_64.init = 16'heeee;
    LUT4 n6558_bdd_4_lut (.A(n9_adj_8[3]), .B(temp_2__4__N_3061), .C(n9_adj_8[0]), 
         .D(n9_adj_8[1]), .Z(n20787)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (D)+!B (C (D)+!C !(D)))) */ ;
    defparam n6558_bdd_4_lut.init = 16'ha954;
    LUT4 i3315_3_lut_4_lut (.A(\temp[2][0] ), .B(\temp[2][3] ), .C(\temp[2][1] ), 
         .D(\temp[2][2] ), .Z(\linecode[39] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam i3315_3_lut_4_lut.init = 16'hf67d;
    LUT4 i2277_2_lut_rep_61_3_lut (.A(n9_adj_8[0]), .B(temp_2__4__N_3061), 
         .C(n9_adj_8[1]), .Z(n20520)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/encode.vhd(83[8:16])
    defparam i2277_2_lut_rep_61_3_lut.init = 16'hfefe;
    LUT4 i3305_3_lut_4_lut (.A(\temp[3][0] ), .B(\temp[3][3] ), .C(\temp[3][1] ), 
         .D(\temp[3][2] ), .Z(\linecode[23] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam i3305_3_lut_4_lut.init = 16'hf67d;
    LUT4 n6408_bdd_4_lut (.A(n6408), .B(n6410), .C(n20527), .D(n6409), 
         .Z(temp_2__4__N_3061)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam n6408_bdd_4_lut.init = 16'heaaa;
    LUT4 i5302_1_lut_rep_130 (.A(mode[1]), .Z(mode_1_derived_1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i5302_1_lut_rep_130.init = 16'h5555;
    LUT4 mode_1__I_0_2812_i3_2_lut_rep_100_2_lut (.A(mode[1]), .B(mode[0]), 
         .Z(n20559)) /* synthesis lut_function=((B)+!A) */ ;
    defparam mode_1__I_0_2812_i3_2_lut_rep_100_2_lut.init = 16'hdddd;
    LUT4 mux_103_i1_3_lut_4_lut_4_lut (.A(mode[1]), .B(temp_4__2__N_2768[0]), 
         .C(temp_4__2__N_2770), .D(mode[0]), .Z(n1807[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;
    defparam mux_103_i1_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 mode_1__I_0_2812_i4_1_lut_2_lut_2_lut (.A(mode[1]), .B(mode[0]), 
         .Z(temp_4__31__N_2727)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam mode_1__I_0_2812_i4_1_lut_2_lut_2_lut.init = 16'h2222;
    LUT4 n6483_bdd_4_lut_rep_71 (.A(n9_adj_9[3]), .B(n20534), .C(n9_adj_9[1]), 
         .D(n9_adj_9[2]), .Z(n20530)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam n6483_bdd_4_lut_rep_71.init = 16'haaa8;
    LUT4 i5407_2_lut_2_lut (.A(mode[1]), .B(mode[0]), .Z(\linecode_87__N_2650[1] )) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i5407_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_962_i1_3_lut_4_lut_4_lut (.A(mode[1]), .B(n9[0]), .C(temp_0__4__N_2831), 
         .D(mode[0]), .Z(n3741[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C)) */ ;
    defparam mux_962_i1_3_lut_4_lut_4_lut.init = 16'hf072;
    LUT4 n14558_bdd_3_lut_3_lut (.A(n20919), .B(n20422), .C(n1843), .Z(n20917)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n14558_bdd_3_lut_3_lut.init = 16'hacac;
    LUT4 i3616_3_lut_4_lut (.A(n9_adj_9[3]), .B(n20534), .C(n9_adj_9[1]), 
         .D(n9_adj_9[2]), .Z(temp_1__4__N_2805[1])) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A !(B (C)+!B !(C))) */ ;
    defparam i3616_3_lut_4_lut.init = 16'h9694;
    LUT4 i1_2_lut (.A(n9[0]), .B(n9[1]), .Z(temp_0__4__N_2865[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/encode.vhd(59[25] 65[32])
    defparam i1_2_lut.init = 16'h6666;
    LUT4 n14568_bdd_3_lut_3_lut (.A(n20920), .B(n20408), .C(n1843), .Z(n20918)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n14568_bdd_3_lut_3_lut.init = 16'hacac;
    LUT4 i8394_3_lut_4_lut (.A(n20420), .B(n1845), .C(n20923), .Z(n15501)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i8394_3_lut_4_lut.init = 16'hb8b8;
    LUT4 i8387_3_lut_4_lut (.A(n20413), .B(n1845), .C(n20926), .Z(n15499)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i8387_3_lut_4_lut.init = 16'hb8b8;
    PFUMX i8713 (.BLUT(n20612), .ALUT(n20613), .C0(\temp[0][0] ), .Z(\linecode[71] ));
    PFUMX i8711 (.BLUT(n20608), .ALUT(n20609), .C0(mode[1]), .Z(n3740[0]));
    PFUMX i8709 (.BLUT(n20605), .ALUT(n20606), .C0(mode[1]), .Z(n3742[0]));
    
endmodule
//
// Verilog Description of module B20trans
//

module B20trans (\sample[2] , DQ_N_215, DQ_out, \sample[3] , \sample[4] , 
            \sample[5] , \sample[1] , \sample[6] , clk_c, \sample[7] , 
            \sample[8] , \sample[9] , \sample[10] , n6806, n20928, 
            \sample[0] , GND_net);
    output \sample[2] ;
    output DQ_N_215;
    input DQ_out;
    output \sample[3] ;
    output \sample[4] ;
    output \sample[5] ;
    output \sample[1] ;
    output \sample[6] ;
    input clk_c;
    output \sample[7] ;
    output \sample[8] ;
    output \sample[9] ;
    output \sample[10] ;
    output n6806;
    input n20928;
    output \sample[0] ;
    input GND_net;
    
    wire overflow /* synthesis SET_AS_NETWORK=\CB/overflow, is_clock=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(26[8:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    wire [10:0]us_cnt;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    
    wire n20600, overflow_enable_1, read_in;
    wire [1:0]state;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    
    wire overflow_enable_2;
    wire [1:0]state_1__N_49;
    
    wire n20000, DQ_N_230;
    wire [19:0]s_devide;   // c:/labcode6/impl1/source/temptrans.vhd(25[8:16])
    
    wire overflow_enable_36;
    wire [19:0]s_devide_19__N_147;
    
    wire overflow_enable_4, overflow_enable_5, overflow_enable_6, overflow_enable_7, 
        overflow_enable_47;
    wire [10:0]n62;
    
    wire overflow_enable_9, overflow_enable_10, DQ_N_216, DQ_N_237, 
        DQ_N_251;
    wire [3:0]us_devide;   // c:/labcode6/impl1/source/temptrans.vhd(24[8:17])
    
    wire n20568, overflow_enable_11;
    wire [31:0]turn;   // c:/labcode6/impl1/source/temptrans.vhd(16[8:12])
    
    wire n15316, n20550, overflow_enable_50, n20355, n20354, n20543, 
        n16921, n20599, DQ_N_254;
    wire [4:0]num;   // c:/labcode6/impl1/source/temptrans.vhd(18[8:11])
    
    wire overflow_enable_48, n15867;
    wire [4:0]n25;
    
    wire n20505, n20540, n5, n2073, n20538, n16871, n2895;
    wire [10:0]n49;
    
    wire n14515, n21, n20255, n1, n20591, n19775, n19799, n16914, 
        n20256, n16680, n6, n20259, n20260, n15317, n20571, n9, 
        n19914;
    wire [3:0]n2;
    
    wire n23, n21_adj_3509, n22, n20264, n20544, overflow_enable_37, 
        n20258, n20548, n20558, overflow_enable_38, n14, n20562, 
        overflow_enable_39, n20529, n20572, n5_adj_3510, n5_adj_3511, 
        n79, n18861, n19718, n26_adj_3512, n15449, n6_adj_3513, 
        n19717, n20587, n33, n20579, n2083, n15374, n16469, n20601, 
        n8, n19902, n18791, n7, n4, n38, n20532, n20531, n9_adj_3514, 
        n29_adj_3515, n19840, n19800, n19912, n12, n19723, n20582, 
        n21_adj_3516, clk_c_enable_152, n18933, n4_adj_3517, n4_adj_3518, 
        n20261, n20257, overflow_enable_49, n18410, n18401, n18400, 
        n18406, n18399, n18408, n18409, n18398, n18397, n18396, 
        n18407, n18395, n18394, n18393, n18392;
    
    LUT4 i34_4_lut_then_4_lut (.A(us_cnt[5]), .B(us_cnt[2]), .C(us_cnt[8]), 
         .D(us_cnt[10]), .Z(n20600)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i34_4_lut_then_4_lut.init = 16'h0002;
    FD1P3AX Data_i2 (.D(read_in), .SP(overflow_enable_1), .CK(overflow), 
            .Q(\sample[2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i2.GSR = "DISABLED";
    FD1P3AX state_i1 (.D(state_1__N_49[1]), .SP(overflow_enable_2), .CK(overflow), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam state_i1.GSR = "DISABLED";
    FD1S3AX state_i0 (.D(n20000), .CK(overflow), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam state_i0.GSR = "DISABLED";
    FD1S3AX DQ_205 (.D(DQ_N_230), .CK(overflow), .Q(DQ_N_215)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam DQ_205.GSR = "DISABLED";
    FD1P3AX s_devide_i0 (.D(s_devide_19__N_147[0]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i0.GSR = "DISABLED";
    FD1P3AX read_in_210 (.D(DQ_out), .SP(overflow_enable_4), .CK(overflow), 
            .Q(read_in)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam read_in_210.GSR = "DISABLED";
    FD1P3AX Data_i3 (.D(read_in), .SP(overflow_enable_5), .CK(overflow), 
            .Q(\sample[3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i3.GSR = "DISABLED";
    FD1P3AX Data_i4 (.D(read_in), .SP(overflow_enable_6), .CK(overflow), 
            .Q(\sample[4] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i4.GSR = "DISABLED";
    FD1P3AX Data_i5 (.D(read_in), .SP(overflow_enable_7), .CK(overflow), 
            .Q(\sample[5] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i5.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i0 (.D(n62[0]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i0.GSR = "DISABLED";
    FD1P3AX Data_i1 (.D(read_in), .SP(overflow_enable_9), .CK(overflow), 
            .Q(\sample[1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i1.GSR = "DISABLED";
    FD1P3AX Data_i6 (.D(read_in), .SP(overflow_enable_10), .CK(overflow), 
            .Q(\sample[6] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i6.GSR = "DISABLED";
    FD1P3AX i198_212 (.D(DQ_N_251), .SP(DQ_N_237), .CK(overflow), .Q(DQ_N_216)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i198_212.GSR = "DISABLED";
    FD1S3AX us_devide_1597__i0 (.D(n20568), .CK(clk_c), .Q(us_devide[0]));   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam us_devide_1597__i0.GSR = "DISABLED";
    FD1P3AX Data_i7 (.D(read_in), .SP(overflow_enable_11), .CK(overflow), 
            .Q(\sample[7] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i7.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(turn[0]), .B(n15316), .C(overflow_enable_36), 
         .D(n20550), .Z(overflow_enable_50)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+!(C)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i1_4_lut_4_lut.init = 16'h10b0;
    PFUMX i8612 (.BLUT(n20355), .ALUT(n20354), .C0(state[1]), .Z(DQ_N_251));
    LUT4 n15385_bdd_3_lut (.A(n20543), .B(n16921), .C(state[0]), .Z(n20355)) /* synthesis lut_function=(!(A (B+(C))+!A !((C)+!B))) */ ;
    defparam n15385_bdd_3_lut.init = 16'h5353;
    LUT4 i34_4_lut_else_4_lut (.A(us_cnt[5]), .B(us_cnt[2]), .C(us_cnt[8]), 
         .D(us_cnt[10]), .Z(n20599)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i34_4_lut_else_4_lut.init = 16'h4000;
    LUT4 i5209_3_lut (.A(state[1]), .B(DQ_N_254), .C(state[0]), .Z(state_1__N_49[1])) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i5209_3_lut.init = 16'h1a1a;
    FD1P3IX num_1599__i2 (.D(n25[2]), .SP(overflow_enable_48), .CD(n15867), 
            .CK(overflow), .Q(num[2]));   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam num_1599__i2.GSR = "DISABLED";
    LUT4 DQ_out_bdd_3_lut_8672_4_lut (.A(n20505), .B(n20540), .C(DQ_N_237), 
         .D(DQ_out), .Z(DQ_N_230)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam DQ_out_bdd_3_lut_8672_4_lut.init = 16'h8f80;
    LUT4 i3_4_lut (.A(num[4]), .B(num[2]), .C(num[3]), .D(n5), .Z(DQ_N_254)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i1_3_lut_rep_79 (.A(state[0]), .B(state[1]), .C(n2073), .Z(n20538)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_3_lut_rep_79.init = 16'h3232;
    LUT4 us_cnt_1601_mux_6_i3_3_lut_4_lut (.A(DQ_out), .B(n16871), .C(n2895), 
         .D(n49[2]), .Z(n62[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(49[3] 129[12])
    defparam us_cnt_1601_mux_6_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_4_lut_4_lut_adj_75 (.A(state[0]), .B(state[1]), .C(n2073), 
         .D(n14515), .Z(overflow_enable_2)) /* synthesis lut_function=(!(A (B (D))+!A !(B+(C)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_4_lut_4_lut_adj_75.init = 16'h76fe;
    FD1P3IX num_1599__i1 (.D(n25[1]), .SP(overflow_enable_48), .CD(n15867), 
            .CK(overflow), .Q(num[1]));   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam num_1599__i1.GSR = "DISABLED";
    LUT4 n15385_bdd_3_lut_8611 (.A(n21), .B(DQ_N_254), .C(state[0]), .Z(n20255)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam n15385_bdd_3_lut_8611.init = 16'h0707;
    LUT4 i2803_1_lut (.A(num[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(87[37:40])
    defparam i2803_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_76 (.A(n16921), .B(n20591), .C(n19775), .D(n19799), 
         .Z(n2073)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_76.init = 16'h8000;
    LUT4 i5635_4_lut (.A(n16914), .B(us_cnt[10]), .C(us_cnt[9]), .D(us_cnt[8]), 
         .Z(n16921)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5635_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut (.A(us_cnt[7]), .B(us_cnt[5]), .C(us_cnt[6]), .D(n19775), 
         .Z(n16914)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 n15385_bdd_2_lut_8545 (.A(state[0]), .B(turn[0]), .Z(n20256)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15385_bdd_2_lut_8545.init = 16'hdddd;
    FD1P3IX us_cnt_1601__i10 (.D(n49[10]), .SP(overflow_enable_47), .CD(n16680), 
            .CK(overflow), .Q(us_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i10.GSR = "DISABLED";
    FD1P3IX us_cnt_1601__i8 (.D(n49[8]), .SP(overflow_enable_47), .CD(n16680), 
            .CK(overflow), .Q(us_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i8.GSR = "DISABLED";
    FD1P3IX num_1599__i4 (.D(n25[4]), .SP(overflow_enable_48), .CD(n15867), 
            .CK(overflow), .Q(num[4]));   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam num_1599__i4.GSR = "DISABLED";
    FD1P3IX num_1599__i3 (.D(n25[3]), .SP(overflow_enable_48), .CD(n15867), 
            .CK(overflow), .Q(num[3]));   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam num_1599__i3.GSR = "DISABLED";
    LUT4 n16921_bdd_4_lut_8685 (.A(n6), .B(us_cnt[10]), .C(us_cnt[2]), 
         .D(us_cnt[6]), .Z(n20259)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n16921_bdd_4_lut_8685.init = 16'h0010;
    LUT4 pwr_bdd_2_lut_8590 (.A(n20259), .B(n16921), .Z(n20260)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_8590.init = 16'hbbbb;
    LUT4 i8482_2_lut (.A(turn[0]), .B(n15316), .Z(n15317)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i8482_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_112 (.A(num[2]), .B(num[3]), .Z(n20571)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i1_2_lut_rep_112.init = 16'heeee;
    LUT4 i7_4_lut (.A(n9), .B(n19914), .C(s_devide[16]), .D(s_devide[6]), 
         .Z(n15316)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'hbfff;
    FD1P3AX s_devide_i19 (.D(s_devide_19__N_147[19]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i19.GSR = "DISABLED";
    LUT4 i6807_2_lut (.A(us_devide[1]), .B(us_devide[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam i6807_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_77 (.A(n23), .B(s_devide[18]), .C(n21_adj_3509), 
         .D(n22), .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_77.init = 16'hfffb;
    FD1P3AX s_devide_i18 (.D(s_devide_19__N_147[18]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i18.GSR = "DISABLED";
    FD1P3AX s_devide_i17 (.D(s_devide_19__N_147[17]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i17.GSR = "DISABLED";
    FD1P3AX s_devide_i16 (.D(s_devide_19__N_147[16]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i16.GSR = "DISABLED";
    FD1P3AX s_devide_i15 (.D(s_devide_19__N_147[15]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i15.GSR = "DISABLED";
    FD1P3AX s_devide_i14 (.D(s_devide_19__N_147[14]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i14.GSR = "DISABLED";
    FD1P3AX s_devide_i13 (.D(s_devide_19__N_147[13]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i13.GSR = "DISABLED";
    FD1P3AX s_devide_i12 (.D(s_devide_19__N_147[12]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i12.GSR = "DISABLED";
    FD1P3AX s_devide_i11 (.D(s_devide_19__N_147[11]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i11.GSR = "DISABLED";
    FD1P3AX s_devide_i10 (.D(s_devide_19__N_147[10]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i10.GSR = "DISABLED";
    FD1P3AX s_devide_i9 (.D(s_devide_19__N_147[9]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i9.GSR = "DISABLED";
    FD1P3AX s_devide_i8 (.D(s_devide_19__N_147[8]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i8.GSR = "DISABLED";
    FD1P3AX s_devide_i7 (.D(s_devide_19__N_147[7]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i7.GSR = "DISABLED";
    FD1P3AX s_devide_i6 (.D(s_devide_19__N_147[6]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i6.GSR = "DISABLED";
    FD1P3AX s_devide_i5 (.D(s_devide_19__N_147[5]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i5.GSR = "DISABLED";
    FD1P3AX s_devide_i4 (.D(s_devide_19__N_147[4]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i4.GSR = "DISABLED";
    FD1P3AX s_devide_i3 (.D(s_devide_19__N_147[3]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i3.GSR = "DISABLED";
    FD1P3AX s_devide_i2 (.D(s_devide_19__N_147[2]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i2.GSR = "DISABLED";
    FD1P3AX s_devide_i1 (.D(s_devide_19__N_147[1]), .SP(overflow_enable_36), 
            .CK(overflow), .Q(s_devide[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam s_devide_i1.GSR = "DISABLED";
    LUT4 turn_0__bdd_4_lut_8656 (.A(turn[0]), .B(num[2]), .C(num[1]), 
         .D(num[0]), .Z(n20264)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !((D)+!C)) */ ;
    defparam turn_0__bdd_4_lut_8656.init = 16'haa78;
    LUT4 n15461_bdd_3_lut_rep_84 (.A(n20544), .B(us_cnt[2]), .C(us_cnt[1]), 
         .Z(n20543)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam n15461_bdd_3_lut_rep_84.init = 16'heaea;
    FD1P3AX Data_i8 (.D(read_in), .SP(overflow_enable_37), .CK(overflow), 
            .Q(\sample[8] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i8.GSR = "DISABLED";
    LUT4 n15385_bdd_2_lut_4_lut (.A(n20544), .B(us_cnt[2]), .C(us_cnt[1]), 
         .D(n21), .Z(n20258)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))))) */ ;
    defparam n15385_bdd_2_lut_4_lut.init = 16'h15ff;
    LUT4 i8278_4_lut (.A(s_devide[9]), .B(s_devide[19]), .C(s_devide[14]), 
         .D(s_devide[17]), .Z(n19914)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8278_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_81_4_lut (.A(n20548), .B(us_cnt[6]), .C(us_cnt[4]), 
         .D(n20558), .Z(n20540)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam i1_2_lut_rep_81_4_lut.init = 16'hfffe;
    FD1P3AX Data_i9 (.D(read_in), .SP(overflow_enable_38), .CK(overflow), 
            .Q(\sample[9] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i9.GSR = "DISABLED";
    LUT4 i10_4_lut (.A(s_devide[15]), .B(s_devide[5]), .C(s_devide[1]), 
         .D(n14), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_103_3_lut (.A(num[2]), .B(num[3]), .C(num[4]), .Z(n20562)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i1_2_lut_rep_103_3_lut.init = 16'hefef;
    FD1P3AX Data_i10 (.D(read_in), .SP(overflow_enable_39), .CK(overflow), 
            .Q(\sample[10] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i10.GSR = "DISABLED";
    LUT4 i8486_2_lut_2_lut_3_lut_4_lut (.A(turn[0]), .B(n20529), .C(n20572), 
         .D(n20571), .Z(overflow_enable_5)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i8486_2_lut_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i8492_2_lut_2_lut_3_lut_4_lut (.A(turn[0]), .B(n20529), .C(n5_adj_3510), 
         .D(n20571), .Z(overflow_enable_9)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i8492_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i8489_2_lut_2_lut_3_lut_4_lut (.A(turn[0]), .B(n20529), .C(n5_adj_3511), 
         .D(n20571), .Z(overflow_enable_1)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i8489_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut (.A(turn[0]), .B(n20529), .C(n5_adj_3510), 
         .D(n79), .Z(overflow_enable_38)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_78 (.A(turn[0]), .B(n20529), .C(n5_adj_3511), 
         .D(n79), .Z(overflow_enable_39)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i1_2_lut_3_lut_4_lut_adj_78.init = 16'h0800;
    LUT4 i1_2_lut_rep_91_3_lut_4_lut (.A(num[2]), .B(num[3]), .C(n5), 
         .D(num[4]), .Z(n20550)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i1_2_lut_rep_91_3_lut_4_lut.init = 16'hfeff;
    LUT4 i5524_2_lut_rep_113 (.A(num[0]), .B(num[1]), .Z(n20572)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5524_2_lut_rep_113.init = 16'h8888;
    LUT4 i6908_2_lut_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(num[3]), 
         .D(num[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i6908_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i6901_2_lut_3_lut (.A(num[0]), .B(num[1]), .C(num[2]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6901_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_4_lut_adj_79 (.A(turn[0]), .B(n20529), .C(n79), 
         .D(n5), .Z(overflow_enable_37)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[5] 128[12])
    defparam i1_2_lut_3_lut_4_lut_adj_79.init = 16'h0080;
    FD1P3AX us_cnt_1601__i1 (.D(n62[1]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i1.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i2 (.D(n62[2]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i2.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i3 (.D(n62[3]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i3.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i4 (.D(n62[4]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i4.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i5 (.D(n62[5]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i5.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i6 (.D(n62[6]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i6.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i7 (.D(n62[7]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i7.GSR = "DISABLED";
    FD1P3AX us_cnt_1601__i9 (.D(n62[9]), .SP(overflow_enable_47), .CK(overflow), 
            .Q(us_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601__i9.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_80 (.A(n18861), .B(turn[0]), .C(overflow_enable_36), 
         .D(n20543), .Z(overflow_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_adj_80.init = 16'h4000;
    LUT4 equal_38_i5_2_lut (.A(num[0]), .B(num[1]), .Z(n5_adj_3510)) /* synthesis lut_function=((B)+!A) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(117[12:15])
    defparam equal_38_i5_2_lut.init = 16'hdddd;
    LUT4 us_cnt_1601_mux_6_i1_3_lut (.A(n16871), .B(n49[0]), .C(n2895), 
         .Z(n62[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i1_3_lut.init = 16'hc5c5;
    LUT4 i3_4_lut_adj_81 (.A(us_cnt[10]), .B(n19718), .C(state[0]), .D(state[1]), 
         .Z(n16871)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_81.init = 16'hfffe;
    LUT4 i1_2_lut_rep_89 (.A(us_cnt[3]), .B(n26_adj_3512), .Z(n20548)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(116[12:23])
    defparam i1_2_lut_rep_89.init = 16'heeee;
    LUT4 i4_4_lut (.A(n15449), .B(n16921), .C(us_cnt[0]), .D(n6_adj_3513), 
         .Z(n19718)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i8_4_lut (.A(s_devide[0]), .B(s_devide[2]), .C(s_devide[11]), 
         .D(s_devide[4]), .Z(n21_adj_3509)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(us_cnt[1]), .B(n19717), .Z(n6_adj_3513)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_rep_85_4_lut (.A(us_cnt[3]), .B(n26_adj_3512), .C(us_cnt[4]), 
         .D(us_cnt[6]), .Z(n20544)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(116[12:23])
    defparam i2_3_lut_rep_85_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_119 (.A(state[0]), .B(state[1]), .Z(overflow_enable_36)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_119.init = 16'h8888;
    LUT4 i8495_2_lut_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n2895), 
         .D(turn[0]), .Z(n16680)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C))) */ ;
    defparam i8495_2_lut_2_lut_3_lut_4_lut.init = 16'h0f07;
    LUT4 i9_4_lut (.A(s_devide[3]), .B(s_devide[8]), .C(s_devide[13]), 
         .D(s_devide[10]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i8504_2_lut_rep_106_3_lut (.A(state[0]), .B(state[1]), .C(turn[0]), 
         .Z(overflow_enable_47)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i8504_2_lut_rep_106_3_lut.init = 16'hf7f7;
    LUT4 i8522_2_lut_2_lut_4_lut (.A(n20529), .B(turn[0]), .C(n20587), 
         .D(n5_adj_3511), .Z(overflow_enable_10)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i8522_2_lut_2_lut_4_lut.init = 16'h0008;
    LUT4 i8436_3_lut_4_lut (.A(DQ_N_254), .B(state[1]), .C(state[0]), 
         .D(n33), .Z(n20000)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D)+!C !(D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i8436_3_lut_4_lut.init = 16'hf027;
    LUT4 i1_2_lut_rep_120 (.A(us_cnt[3]), .B(us_cnt[4]), .Z(n20579)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_2_lut_rep_120.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(us_cnt[3]), .B(us_cnt[4]), .C(us_cnt[2]), 
         .Z(n19775)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_82 (.A(s_devide[12]), .B(s_devide[7]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(103[8:16])
    defparam i1_2_lut_adj_82.init = 16'heeee;
    LUT4 i8524_2_lut_2_lut_4_lut (.A(n20529), .B(turn[0]), .C(n20587), 
         .D(n20572), .Z(overflow_enable_11)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i8524_2_lut_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_4_lut (.A(DQ_N_254), .B(state[1]), .C(state[0]), .D(n2083), 
         .Z(n15374)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_2_lut_4_lut.init = 16'h0028;
    LUT4 i1_2_lut_4_lut_adj_83 (.A(DQ_N_254), .B(state[1]), .C(state[0]), 
         .D(n16469), .Z(n2895)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (D)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_2_lut_4_lut_adj_83.init = 16'hff28;
    LUT4 i3_3_lut_4_lut (.A(us_cnt[3]), .B(us_cnt[4]), .C(us_cnt[1]), 
         .D(n20601), .Z(n8)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i3_3_lut_4_lut.init = 16'h0800;
    LUT4 i8266_2_lut_4_lut (.A(DQ_N_254), .B(state[1]), .C(state[0]), 
         .D(n2083), .Z(n19902)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C (D)))+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i8266_2_lut_4_lut.init = 16'h2800;
    LUT4 i2_4_lut (.A(turn[0]), .B(state[1]), .C(n20562), .D(n5), .Z(n18791)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i20_4_lut (.A(state[1]), .B(n7), .C(n4), .D(n8), .Z(n38)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i20_4_lut.init = 16'h1555;
    LUT4 i8519_2_lut_2_lut_4_lut (.A(n20529), .B(turn[0]), .C(n20587), 
         .D(n5_adj_3510), .Z(overflow_enable_7)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i8519_2_lut_2_lut_4_lut.init = 16'h0008;
    LUT4 i424_3_lut_rep_72_4_lut (.A(n5), .B(n20562), .C(turn[0]), .D(n20532), 
         .Z(n20531)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (C)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i424_3_lut_rep_72_4_lut.init = 16'h0fef;
    LUT4 i3269_3_lut_4_lut (.A(n5), .B(n20562), .C(turn[0]), .D(n15316), 
         .Z(n14515)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i3269_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_4_lut_adj_84 (.A(state[1]), .B(n15374), .C(n20538), .D(n9_adj_3514), 
         .Z(overflow_enable_48)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i1_4_lut_adj_84.init = 16'h3032;
    LUT4 i1_4_lut_adj_85 (.A(n15374), .B(n29_adj_3515), .C(n19840), .D(n19902), 
         .Z(n15867)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i1_4_lut_adj_85.init = 16'h0040;
    LUT4 i41_4_lut (.A(state[0]), .B(n20531), .C(state[1]), .D(n19800), 
         .Z(n29_adj_3515)) /* synthesis lut_function=(!(A (B (C))+!A !(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i41_4_lut.init = 16'h7f7a;
    LUT4 i6_4_lut (.A(n19912), .B(n12), .C(us_cnt[0]), .D(us_cnt[1]), 
         .Z(n2083)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i6_4_lut.init = 16'h0400;
    LUT4 i5_4_lut (.A(n21), .B(us_cnt[7]), .C(n20579), .D(n19723), .Z(n12)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h2000;
    LUT4 i8276_3_lut (.A(us_cnt[10]), .B(us_cnt[2]), .C(us_cnt[8]), .Z(n19912)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8276_3_lut.init = 16'hfefe;
    PFUMX i5196 (.BLUT(n38), .ALUT(n18791), .C0(state[0]), .Z(n16469));
    LUT4 i2_3_lut (.A(us_cnt[9]), .B(us_cnt[6]), .C(us_cnt[5]), .Z(n19723)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i6894_2_lut (.A(num[1]), .B(num[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i6894_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_123 (.A(us_cnt[1]), .B(us_cnt[0]), .Z(n20582)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i1_2_lut_rep_123.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(us_cnt[1]), .B(us_cnt[0]), .C(us_cnt[7]), 
         .D(n19723), .Z(n19799)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_99_3_lut (.A(us_cnt[1]), .B(us_cnt[0]), .C(us_cnt[2]), 
         .Z(n20558)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i1_2_lut_rep_99_3_lut.init = 16'he0e0;
    LUT4 i2790_1_lut (.A(DQ_N_216), .Z(n6806)) /* synthesis lut_function=(!(A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(46[2] 131[14])
    defparam i2790_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_86 (.A(num[3]), .B(num[2]), .Z(n79)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i1_2_lut_adj_86.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_87 (.A(us_cnt[1]), .B(us_cnt[0]), .C(n19717), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(27[8:14])
    defparam i1_2_lut_3_lut_adj_87.init = 16'hfefe;
    LUT4 i4623_4_lut (.A(state[1]), .B(n14515), .C(state[0]), .D(n2073), 
         .Z(n33)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(17[8:13])
    defparam i4623_4_lut.init = 16'h8085;
    LUT4 us_cnt_1601_mux_6_i4_4_lut (.A(DQ_out), .B(n49[3]), .C(n2895), 
         .D(n16871), .Z(n62[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i4_4_lut.init = 16'hc0c5;
    LUT4 us_cnt_1601_mux_6_i5_3_lut (.A(n16871), .B(n49[4]), .C(n2895), 
         .Z(n62[4])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i5_3_lut.init = 16'hc5c5;
    FD1S3AX us_devide_1597__i1 (.D(n2[1]), .CK(clk_c), .Q(us_devide[1]));   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam us_devide_1597__i1.GSR = "DISABLED";
    LUT4 us_cnt_1601_mux_6_i6_3_lut (.A(n16871), .B(n49[5]), .C(n2895), 
         .Z(n62[5])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i6_3_lut.init = 16'hc5c5;
    LUT4 us_cnt_1601_mux_6_i7_3_lut (.A(n16871), .B(n49[6]), .C(n2895), 
         .Z(n62[6])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i7_3_lut.init = 16'hc5c5;
    LUT4 us_cnt_1601_mux_6_i8_3_lut (.A(n16871), .B(n49[7]), .C(n2895), 
         .Z(n62[7])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i8_3_lut.init = 16'hc5c5;
    LUT4 us_cnt_1601_mux_6_i10_3_lut (.A(n16871), .B(n49[9]), .C(n2895), 
         .Z(n62[9])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_mux_6_i10_3_lut.init = 16'hc5c5;
    PFUMX i8705 (.BLUT(n20599), .ALUT(n20600), .C0(us_cnt[9]), .Z(n20601));
    LUT4 i2_3_lut_4_lut_4_lut (.A(n20532), .B(turn[0]), .C(n20550), .D(overflow_enable_36), 
         .Z(n19840)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h7fff;
    LUT4 i2_2_lut (.A(n16921), .B(us_cnt[6]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_88 (.A(us_cnt[0]), .B(us_cnt[7]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i1_2_lut_adj_88.init = 16'h4444;
    LUT4 i1_2_lut_adj_89 (.A(num[0]), .B(num[1]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i1_2_lut_adj_89.init = 16'heeee;
    LUT4 equal_37_i5_2_lut (.A(num[0]), .B(num[1]), .Z(n5_adj_3511)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(117[12:15])
    defparam equal_37_i5_2_lut.init = 16'hbbbb;
    LUT4 i6915_3_lut_4_lut (.A(num[2]), .B(n20572), .C(num[3]), .D(num[4]), 
         .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam i6915_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_4_lut_adj_90 (.A(n20532), .B(turn[0]), .C(n20550), .D(state[0]), 
         .Z(n9_adj_3514)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_90.init = 16'h7300;
    LUT4 i2_3_lut_rep_73 (.A(n18861), .B(n20543), .C(n21), .Z(n20532)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_73.init = 16'h0808;
    LUT4 i2_4_lut_adj_91 (.A(n26_adj_3512), .B(us_cnt[4]), .C(us_cnt[6]), 
         .D(n21_adj_3516), .Z(n18861)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam i2_4_lut_adj_91.init = 16'hfefa;
    FD1P3IX overflow_202 (.D(n20928), .SP(clk_c_enable_152), .CD(n18933), 
            .CK(clk_c), .Q(overflow)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(35[3] 43[11])
    defparam overflow_202.GSR = "DISABLED";
    FD1P3IX num_1599__i0 (.D(n1), .SP(overflow_enable_48), .CD(n15867), 
            .CK(overflow), .Q(num[0]));   // c:/labcode6/impl1/source/temptrans.vhd(118[14:17])
    defparam num_1599__i0.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_92 (.A(us_cnt[8]), .B(n20579), .C(us_cnt[5]), .D(n4_adj_3517), 
         .Z(n19717)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(56[11:23])
    defparam i2_4_lut_adj_92.init = 16'hbfff;
    LUT4 i1_2_lut_adj_93 (.A(us_cnt[9]), .B(us_cnt[7]), .Z(n4_adj_3517)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam i1_2_lut_adj_93.init = 16'h8888;
    LUT4 i3_4_lut_adj_94 (.A(us_cnt[4]), .B(n20582), .C(n15449), .D(n20548), 
         .Z(n21)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(116[12:23])
    defparam i3_4_lut_adj_94.init = 16'hfffd;
    LUT4 i1_2_lut_adj_95 (.A(us_cnt[2]), .B(us_cnt[3]), .Z(n21_adj_3516)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_95.init = 16'heeee;
    LUT4 i1_2_lut_rep_128 (.A(num[3]), .B(num[2]), .Z(n20587)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_128.init = 16'hbbbb;
    LUT4 i2_4_lut_adj_96 (.A(us_cnt[5]), .B(us_cnt[10]), .C(us_cnt[7]), 
         .D(n4_adj_3518), .Z(n26_adj_3512)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam i2_4_lut_adj_96.init = 16'hfffe;
    LUT4 i1_2_lut_adj_97 (.A(us_cnt[9]), .B(us_cnt[8]), .Z(n4_adj_3518)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(56[11:23])
    defparam i1_2_lut_adj_97.init = 16'heeee;
    L6MUX21 i8548 (.D0(n20261), .D1(n20257), .SD(state[1]), .Z(DQ_N_237));
    LUT4 n20264_bdd_4_lut_4_lut (.A(state[1]), .B(num[1]), .C(state[0]), 
         .D(n20264), .Z(n20505)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;
    defparam n20264_bdd_4_lut_4_lut.init = 16'h4a40;
    LUT4 i1_2_lut_adj_98 (.A(us_cnt[2]), .B(us_cnt[6]), .Z(n15449)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(116[12:23])
    defparam i1_2_lut_adj_98.init = 16'hbbbb;
    LUT4 i6814_2_lut_3_lut (.A(us_devide[1]), .B(us_devide[0]), .C(us_devide[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam i6814_2_lut_3_lut.init = 16'h7878;
    FD1S3AX us_devide_1597__i2 (.D(n2[2]), .CK(clk_c), .Q(us_devide[2]));   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam us_devide_1597__i2.GSR = "DISABLED";
    FD1S3AX us_devide_1597__i3 (.D(n2[3]), .CK(clk_c), .Q(us_devide[3]));   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam us_devide_1597__i3.GSR = "DISABLED";
    LUT4 us_cnt_1601_mux_6_i2_3_lut_4_lut (.A(DQ_out), .B(n16871), .C(n2895), 
         .D(n49[1]), .Z(n62[1])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(49[3] 129[12])
    defparam us_cnt_1601_mux_6_i2_3_lut_4_lut.init = 16'hf202;
    LUT4 i6821_3_lut_4_lut (.A(us_devide[1]), .B(us_devide[0]), .C(us_devide[2]), 
         .D(us_devide[3]), .Z(n2[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(42[17:26])
    defparam i6821_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX Data_i0 (.D(read_in), .SP(overflow_enable_49), .CK(overflow), 
            .Q(\sample[0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam Data_i0.GSR = "DISABLED";
    PFUMX i8546 (.BLUT(n20260), .ALUT(n20258), .C0(state[0]), .Z(n20261));
    CCU2D us_cnt_1601_add_4_11 (.A0(us_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18410), .S0(n49[9]), .S1(n49[10]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_11.INIT0 = 16'hfaaa;
    defparam us_cnt_1601_add_4_11.INIT1 = 16'hfaaa;
    defparam us_cnt_1601_add_4_11.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_11.INJECT1_1 = "NO";
    LUT4 n15385_bdd_4_lut (.A(n20543), .B(n20540), .C(DQ_N_254), .D(state[0]), 
         .Z(n20354)) /* synthesis lut_function=(!(A (B+!(D))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n15385_bdd_4_lut.init = 16'h3350;
    PFUMX i8543 (.BLUT(n20256), .ALUT(n20255), .C0(n20543), .Z(n20257));
    LUT4 i1_2_lut_rep_132 (.A(us_cnt[10]), .B(us_cnt[8]), .Z(n20591)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_132.init = 16'h8888;
    LUT4 i1_2_lut_rep_70_4_lut (.A(n18861), .B(n20543), .C(n21), .D(overflow_enable_36), 
         .Z(n20529)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_70_4_lut.init = 16'h0800;
    LUT4 i3_3_lut_4_lut_adj_99 (.A(us_cnt[2]), .B(n20591), .C(n19799), 
         .D(n20579), .Z(n19800)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam i3_3_lut_4_lut_adj_99.init = 16'h8000;
    LUT4 i8527_2_lut_3_lut_4_lut_4_lut (.A(n20587), .B(n5), .C(n20529), 
         .D(turn[0]), .Z(overflow_enable_6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i8527_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i8448_2_lut_3_lut_4_lut_4_lut (.A(n20571), .B(n5), .C(n20529), 
         .D(turn[0]), .Z(overflow_enable_49)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i8448_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    CCU2D add_81_21 (.A0(s_devide[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18401), 
          .S0(s_devide_19__N_147[19]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_21.INIT0 = 16'h5aaa;
    defparam add_81_21.INIT1 = 16'h0000;
    defparam add_81_21.INJECT1_0 = "NO";
    defparam add_81_21.INJECT1_1 = "NO";
    CCU2D add_81_19 (.A0(s_devide[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18400), .COUT(n18401), .S0(s_devide_19__N_147[17]), .S1(s_devide_19__N_147[18]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_19.INIT0 = 16'h5aaa;
    defparam add_81_19.INIT1 = 16'h5aaa;
    defparam add_81_19.INJECT1_0 = "NO";
    defparam add_81_19.INJECT1_1 = "NO";
    CCU2D us_cnt_1601_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18406), .S1(n49[0]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_1.INIT0 = 16'hF000;
    defparam us_cnt_1601_add_4_1.INIT1 = 16'h0555;
    defparam us_cnt_1601_add_4_1.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_1.INJECT1_1 = "NO";
    CCU2D add_81_17 (.A0(s_devide[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18399), .COUT(n18400), .S0(s_devide_19__N_147[15]), .S1(s_devide_19__N_147[16]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_17.INIT0 = 16'h5aaa;
    defparam add_81_17.INIT1 = 16'h5aaa;
    defparam add_81_17.INJECT1_0 = "NO";
    defparam add_81_17.INJECT1_1 = "NO";
    LUT4 i8460_4_lut_4_lut (.A(us_devide[0]), .B(us_devide[2]), .C(us_devide[1]), 
         .D(us_devide[3]), .Z(n18933)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(38[10:24])
    defparam i8460_4_lut_4_lut.init = 16'h0008;
    CCU2D us_cnt_1601_add_4_7 (.A0(us_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18408), .COUT(n18409), .S0(n49[5]), .S1(n49[6]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_7.INIT0 = 16'hfaaa;
    defparam us_cnt_1601_add_4_7.INIT1 = 16'hfaaa;
    defparam us_cnt_1601_add_4_7.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_7.INJECT1_1 = "NO";
    CCU2D add_81_15 (.A0(s_devide[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18398), .COUT(n18399), .S0(s_devide_19__N_147[13]), .S1(s_devide_19__N_147[14]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_15.INIT0 = 16'h5aaa;
    defparam add_81_15.INIT1 = 16'h5aaa;
    defparam add_81_15.INJECT1_0 = "NO";
    defparam add_81_15.INJECT1_1 = "NO";
    FD1P3AX turn_i0 (.D(n15317), .SP(overflow_enable_50), .CK(overflow), 
            .Q(turn[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=128, LSE_RLINE=128 */ ;   // c:/labcode6/impl1/source/temptrans.vhd(48[2] 130[9])
    defparam turn_i0.GSR = "DISABLED";
    CCU2D add_81_13 (.A0(s_devide[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18397), .COUT(n18398), .S0(s_devide_19__N_147[11]), .S1(s_devide_19__N_147[12]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_13.INIT0 = 16'h5aaa;
    defparam add_81_13.INIT1 = 16'h5aaa;
    defparam add_81_13.INJECT1_0 = "NO";
    defparam add_81_13.INJECT1_1 = "NO";
    CCU2D add_81_11 (.A0(s_devide[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18396), .COUT(n18397), .S0(s_devide_19__N_147[9]), .S1(s_devide_19__N_147[10]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_11.INIT0 = 16'h5aaa;
    defparam add_81_11.INIT1 = 16'h5aaa;
    defparam add_81_11.INJECT1_0 = "NO";
    defparam add_81_11.INJECT1_1 = "NO";
    CCU2D us_cnt_1601_add_4_5 (.A0(us_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18407), .COUT(n18408), .S0(n49[3]), .S1(n49[4]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_5.INIT0 = 16'hfaaa;
    defparam us_cnt_1601_add_4_5.INIT1 = 16'hfaaa;
    defparam us_cnt_1601_add_4_5.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_5.INJECT1_1 = "NO";
    CCU2D add_81_9 (.A0(s_devide[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18395), .COUT(n18396), .S0(s_devide_19__N_147[7]), .S1(s_devide_19__N_147[8]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_9.INIT0 = 16'h5aaa;
    defparam add_81_9.INIT1 = 16'h5aaa;
    defparam add_81_9.INJECT1_0 = "NO";
    defparam add_81_9.INJECT1_1 = "NO";
    CCU2D add_81_7 (.A0(s_devide[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18394), .COUT(n18395), .S0(s_devide_19__N_147[5]), .S1(s_devide_19__N_147[6]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_7.INIT0 = 16'h5aaa;
    defparam add_81_7.INIT1 = 16'h5aaa;
    defparam add_81_7.INJECT1_0 = "NO";
    defparam add_81_7.INJECT1_1 = "NO";
    CCU2D add_81_5 (.A0(s_devide[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18393), .COUT(n18394), .S0(s_devide_19__N_147[3]), .S1(s_devide_19__N_147[4]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_5.INIT0 = 16'h5aaa;
    defparam add_81_5.INIT1 = 16'h5aaa;
    defparam add_81_5.INJECT1_0 = "NO";
    defparam add_81_5.INJECT1_1 = "NO";
    CCU2D add_81_3 (.A0(s_devide[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18392), .COUT(n18393), .S0(s_devide_19__N_147[1]), .S1(s_devide_19__N_147[2]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_3.INIT0 = 16'h5aaa;
    defparam add_81_3.INIT1 = 16'h5aaa;
    defparam add_81_3.INJECT1_0 = "NO";
    defparam add_81_3.INJECT1_1 = "NO";
    LUT4 i2640_1_lut_rep_109 (.A(us_devide[0]), .Z(n20568)) /* synthesis lut_function=(!(A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(38[10:24])
    defparam i2640_1_lut_rep_109.init = 16'h5555;
    CCU2D add_81_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(s_devide[0]), .B1(turn[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n18392), .S1(s_devide_19__N_147[0]));   // c:/labcode6/impl1/source/temptrans.vhd(104[18:26])
    defparam add_81_1.INIT0 = 16'hF000;
    defparam add_81_1.INIT1 = 16'h5999;
    defparam add_81_1.INJECT1_0 = "NO";
    defparam add_81_1.INJECT1_1 = "NO";
    LUT4 i8510_4_lut_4_lut (.A(us_devide[0]), .B(us_devide[2]), .C(us_devide[3]), 
         .D(us_devide[1]), .Z(clk_c_enable_152)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/labcode6/impl1/source/temptrans.vhd(38[10:24])
    defparam i8510_4_lut_4_lut.init = 16'h2000;
    CCU2D us_cnt_1601_add_4_3 (.A0(us_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18406), .COUT(n18407), .S0(n49[1]), .S1(n49[2]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_3.INIT0 = 16'hfaaa;
    defparam us_cnt_1601_add_4_3.INIT1 = 16'hfaaa;
    defparam us_cnt_1601_add_4_3.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_3.INJECT1_1 = "NO";
    CCU2D us_cnt_1601_add_4_9 (.A0(us_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(us_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18409), .COUT(n18410), .S0(n49[7]), .S1(n49[8]));   // c:/labcode6/impl1/source/temptrans.vhd(121[16:22])
    defparam us_cnt_1601_add_4_9.INIT0 = 16'hfaaa;
    defparam us_cnt_1601_add_4_9.INIT1 = 16'hfaaa;
    defparam us_cnt_1601_add_4_9.INJECT1_0 = "NO";
    defparam us_cnt_1601_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pwm
//

module pwm (GND_net, clk_c, en, beep_c);
    input GND_net;
    input clk_c;
    input en;
    output beep_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    
    wire n18624;
    wire [31:0]pwm_cnt;   // c:/labcode6/impl1/source/beep.vhd(22[8:15])
    wire [9:0]n45;
    
    wire n18625, n18623;
    wire [31:0]div_clk_cnt;   // c:/labcode6/impl1/source/beep.vhd(18[8:19])
    wire [31:0]n133;
    
    wire n18622, n18621, n18620, n18619, n18618, n18617, n18616, 
        n18615, clk_c_enable_116, n15610, n18614, n18613, n18612, 
        n18611, n18610, n18609, n18608, div_clk, div_clk_N_3474, 
        div_clk_ls, pwm_out, pwm_out_N_3477, pwm_out_N_3478, n15574, 
        n57, n58, n54_adj_3504, n46_adj_3505, n18501, n18500, n18499, 
        n18498, n18497, n37, n56, n50_adj_3506, n38, n48_adj_3507, 
        n34, n52_adj_3508, n42, n18628, n18627, n18626;
    
    CCU2D pwm_cnt_1610_1611_add_4_3 (.A0(pwm_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18624), .COUT(n18625), .S0(n45[1]), .S1(n45[2]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_3.INIT0 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_3.INIT1 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_3.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_3.INJECT1_1 = "NO";
    CCU2D pwm_cnt_1610_1611_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18624), .S1(n45[0]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_1.INIT0 = 16'hF000;
    defparam pwm_cnt_1610_1611_add_4_1.INIT1 = 16'h0555;
    defparam pwm_cnt_1610_1611_add_4_1.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_1.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_33 (.A0(div_clk_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18623), .S0(n133[31]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_33.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_33.INIT1 = 16'h0000;
    defparam div_clk_cnt_1609_add_4_33.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_33.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_31 (.A0(div_clk_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18622), .COUT(n18623), .S0(n133[29]), 
          .S1(n133[30]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_31.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_31.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_31.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_31.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_29 (.A0(div_clk_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18621), .COUT(n18622), .S0(n133[27]), 
          .S1(n133[28]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_29.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_29.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_29.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_29.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_27 (.A0(div_clk_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18620), .COUT(n18621), .S0(n133[25]), 
          .S1(n133[26]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_27.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_27.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_27.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_27.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_25 (.A0(div_clk_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18619), .COUT(n18620), .S0(n133[23]), 
          .S1(n133[24]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_25.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_25.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_25.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_25.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_23 (.A0(div_clk_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18618), .COUT(n18619), .S0(n133[21]), 
          .S1(n133[22]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_23.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_23.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_23.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_23.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_21 (.A0(div_clk_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18617), .COUT(n18618), .S0(n133[19]), 
          .S1(n133[20]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_21.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_21.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_21.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_21.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_19 (.A0(div_clk_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18616), .COUT(n18617), .S0(n133[17]), 
          .S1(n133[18]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_19.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_19.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_19.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_19.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_17 (.A0(div_clk_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18615), .COUT(n18616), .S0(n133[15]), 
          .S1(n133[16]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_17.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_17.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_17.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_17.INJECT1_1 = "NO";
    FD1P3IX pwm_cnt_1610_1611__i8 (.D(n45[7]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i8.GSR = "DISABLED";
    CCU2D div_clk_cnt_1609_add_4_15 (.A0(div_clk_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18614), .COUT(n18615), .S0(n133[13]), 
          .S1(n133[14]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_15.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_15.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_15.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_15.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_13 (.A0(div_clk_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18613), .COUT(n18614), .S0(n133[11]), 
          .S1(n133[12]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_13.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_13.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_13.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_13.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_11 (.A0(div_clk_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(div_clk_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18612), .COUT(n18613), .S0(n133[9]), 
          .S1(n133[10]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_11.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_11.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_11.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_11.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_9 (.A0(div_clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18611), .COUT(n18612), .S0(n133[7]), .S1(n133[8]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_9.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_9.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_9.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_9.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_7 (.A0(div_clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18610), .COUT(n18611), .S0(n133[5]), .S1(n133[6]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_7.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_7.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_7.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_7.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_5 (.A0(div_clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18609), .COUT(n18610), .S0(n133[3]), .S1(n133[4]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_5.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_5.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_5.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_5.INJECT1_1 = "NO";
    FD1P3IX pwm_cnt_1610_1611__i7 (.D(n45[6]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i7.GSR = "DISABLED";
    CCU2D div_clk_cnt_1609_add_4_3 (.A0(div_clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18608), .COUT(n18609), .S0(n133[1]), .S1(n133[2]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_3.INIT0 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_3.INIT1 = 16'hfaaa;
    defparam div_clk_cnt_1609_add_4_3.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_3.INJECT1_1 = "NO";
    CCU2D div_clk_cnt_1609_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18608), .S1(n133[0]));   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609_add_4_1.INIT0 = 16'hF000;
    defparam div_clk_cnt_1609_add_4_1.INIT1 = 16'h0555;
    defparam div_clk_cnt_1609_add_4_1.INJECT1_0 = "NO";
    defparam div_clk_cnt_1609_add_4_1.INJECT1_1 = "NO";
    FD1S3AX div_clk_52 (.D(div_clk_N_3474), .CK(clk_c), .Q(div_clk)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=146, LSE_RLINE=146 */ ;   // c:/labcode6/impl1/source/beep.vhd(36[3] 42[10])
    defparam div_clk_52.GSR = "DISABLED";
    FD1S3AX div_clk_ls_53 (.D(div_clk), .CK(clk_c), .Q(div_clk_ls)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=146, LSE_RLINE=146 */ ;   // c:/labcode6/impl1/source/beep.vhd(47[3] 49[10])
    defparam div_clk_ls_53.GSR = "DISABLED";
    FD1P3AX pwm_out_56 (.D(pwm_out_N_3477), .SP(clk_c_enable_116), .CK(clk_c), 
            .Q(pwm_out)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=146, LSE_RLINE=146 */ ;   // c:/labcode6/impl1/source/beep.vhd(71[3] 83[10])
    defparam pwm_out_56.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i6 (.D(n45[5]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i6.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i5 (.D(n45[4]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i5.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i4 (.D(n45[3]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i4.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i3 (.D(n45[2]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i3.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i2 (.D(n45[1]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i2.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i10 (.D(n45[9]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i10.GSR = "DISABLED";
    FD1P3IX pwm_cnt_1610_1611__i9 (.D(n45[8]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i9.GSR = "DISABLED";
    LUT4 pwm_out_I_0_2_lut (.A(pwm_out), .B(pwm_out_N_3478), .Z(pwm_out_N_3477)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/beep.vhd(77[6] 80[13])
    defparam pwm_out_I_0_2_lut.init = 16'h6666;
    FD1P3IX pwm_cnt_1610_1611__i1 (.D(n45[0]), .SP(clk_c_enable_116), .CD(n15610), 
            .CK(clk_c), .Q(pwm_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611__i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(div_clk), .B(n15574), .Z(div_clk_N_3474)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i8476_4_lut (.A(div_clk_cnt[1]), .B(div_clk_cnt[2]), .C(n57), 
         .D(n58), .Z(n15574)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i8476_4_lut.init = 16'h0008;
    LUT4 i27_4_lut (.A(div_clk_cnt[3]), .B(n54_adj_3504), .C(n46_adj_3505), 
         .D(div_clk_cnt[31]), .Z(n57)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i27_4_lut.init = 16'hfffe;
    LUT4 i5306_2_lut (.A(pwm_out), .B(en), .Z(beep_c)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/beep.vhd(88[3] 92[10])
    defparam i5306_2_lut.init = 16'h8888;
    CCU2D sub_985_add_2_12 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18501), .S1(pwm_out_N_3478));
    defparam sub_985_add_2_12.INIT0 = 16'hffff;
    defparam sub_985_add_2_12.INIT1 = 16'h0000;
    defparam sub_985_add_2_12.INJECT1_0 = "NO";
    defparam sub_985_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_985_add_2_10 (.A0(pwm_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18500), .COUT(n18501));
    defparam sub_985_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_985_add_2_10.INIT1 = 16'hffff;
    defparam sub_985_add_2_10.INJECT1_0 = "NO";
    defparam sub_985_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_985_add_2_8 (.A0(pwm_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18499), .COUT(n18500));
    defparam sub_985_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_985_add_2_8.INIT1 = 16'h5555;
    defparam sub_985_add_2_8.INJECT1_0 = "NO";
    defparam sub_985_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_985_add_2_6 (.A0(pwm_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18498), .COUT(n18499));
    defparam sub_985_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_985_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_985_add_2_6.INJECT1_0 = "NO";
    defparam sub_985_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_985_add_2_4 (.A0(pwm_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18497), .COUT(n18498));
    defparam sub_985_add_2_4.INIT0 = 16'h5555;
    defparam sub_985_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_985_add_2_4.INJECT1_0 = "NO";
    defparam sub_985_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_985_add_2_2 (.A0(pwm_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18497));
    defparam sub_985_add_2_2.INIT0 = 16'h5000;
    defparam sub_985_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_985_add_2_2.INJECT1_0 = "NO";
    defparam sub_985_add_2_2.INJECT1_1 = "NO";
    LUT4 i28_4_lut (.A(n37), .B(n56), .C(n50_adj_3506), .D(n38), .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut (.A(div_clk_cnt[11]), .B(n48_adj_3507), .C(n34), .D(div_clk_cnt[21]), 
         .Z(n54_adj_3504)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(div_clk_cnt[28]), .B(div_clk_cnt[8]), .C(div_clk_cnt[18]), 
         .D(div_clk_cnt[0]), .Z(n46_adj_3505)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(div_clk_cnt[9]), .B(div_clk_cnt[17]), .C(div_clk_cnt[12]), 
         .D(div_clk_cnt[24]), .Z(n48_adj_3507)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(div_clk_cnt[25]), .B(div_clk_cnt[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 div_clk_ls_I_0_2_lut_rep_126 (.A(div_clk_ls), .B(div_clk), .Z(clk_c_enable_116)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/beep.vhd(72[7:37])
    defparam div_clk_ls_I_0_2_lut_rep_126.init = 16'h2222;
    LUT4 i4294_2_lut_3_lut (.A(div_clk_ls), .B(div_clk), .C(pwm_out_N_3478), 
         .Z(n15610)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/labcode6/impl1/source/beep.vhd(72[7:37])
    defparam i4294_2_lut_3_lut.init = 16'h2020;
    FD1S3IX div_clk_cnt_1609__i0 (.D(n133[0]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i0.GSR = "DISABLED";
    LUT4 i7_2_lut (.A(div_clk_cnt[4]), .B(div_clk_cnt[16]), .Z(n37)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i26_4_lut (.A(div_clk_cnt[5]), .B(n52_adj_3508), .C(n42), .D(div_clk_cnt[6]), 
         .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(div_clk_cnt[7]), .B(div_clk_cnt[19]), .C(div_clk_cnt[14]), 
         .D(div_clk_cnt[22]), .Z(n50_adj_3506)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(div_clk_cnt[27]), .B(div_clk_cnt[30]), .Z(n38)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i22_4_lut (.A(div_clk_cnt[15]), .B(div_clk_cnt[29]), .C(div_clk_cnt[23]), 
         .D(div_clk_cnt[13]), .Z(n52_adj_3508)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i12_2_lut (.A(div_clk_cnt[10]), .B(div_clk_cnt[20]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/beep.vhd(38[7:20])
    defparam i12_2_lut.init = 16'heeee;
    FD1S3IX div_clk_cnt_1609__i1 (.D(n133[1]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i1.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i2 (.D(n133[2]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i2.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i3 (.D(n133[3]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i3.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i4 (.D(n133[4]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i4.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i5 (.D(n133[5]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i5.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i6 (.D(n133[6]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i6.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i7 (.D(n133[7]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i7.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i8 (.D(n133[8]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i8.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i9 (.D(n133[9]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i9.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i10 (.D(n133[10]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i10.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i11 (.D(n133[11]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i11.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i12 (.D(n133[12]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i12.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i13 (.D(n133[13]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i13.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i14 (.D(n133[14]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i14.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i15 (.D(n133[15]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i15.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i16 (.D(n133[16]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i16.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i17 (.D(n133[17]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i17.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i18 (.D(n133[18]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i18.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i19 (.D(n133[19]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i19.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i20 (.D(n133[20]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i20.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i21 (.D(n133[21]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i21.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i22 (.D(n133[22]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i22.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i23 (.D(n133[23]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i23.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i24 (.D(n133[24]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i24.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i25 (.D(n133[25]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i25.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i26 (.D(n133[26]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i26.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i27 (.D(n133[27]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i27.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i28 (.D(n133[28]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i28.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i29 (.D(n133[29]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i29.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i30 (.D(n133[30]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i30.GSR = "DISABLED";
    FD1S3IX div_clk_cnt_1609__i31 (.D(n133[31]), .CK(clk_c), .CD(n15574), 
            .Q(div_clk_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/beep.vhd(37[17:28])
    defparam div_clk_cnt_1609__i31.GSR = "DISABLED";
    CCU2D pwm_cnt_1610_1611_add_4_11 (.A0(pwm_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18628), .S0(n45[9]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_11.INIT0 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_11.INIT1 = 16'h0000;
    defparam pwm_cnt_1610_1611_add_4_11.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_11.INJECT1_1 = "NO";
    CCU2D pwm_cnt_1610_1611_add_4_9 (.A0(pwm_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18627), .COUT(n18628), .S0(n45[7]), .S1(n45[8]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_9.INIT0 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_9.INIT1 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_9.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_9.INJECT1_1 = "NO";
    CCU2D pwm_cnt_1610_1611_add_4_7 (.A0(pwm_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18626), .COUT(n18627), .S0(n45[5]), .S1(n45[6]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_7.INIT0 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_7.INIT1 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_7.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_7.INJECT1_1 = "NO";
    CCU2D pwm_cnt_1610_1611_add_4_5 (.A0(pwm_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pwm_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18625), .COUT(n18626), .S0(n45[3]), .S1(n45[4]));   // c:/labcode6/impl1/source/beep.vhd(76[15:22])
    defparam pwm_cnt_1610_1611_add_4_5.INIT0 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_5.INIT1 = 16'hfaaa;
    defparam pwm_cnt_1610_1611_add_4_5.INJECT1_0 = "NO";
    defparam pwm_cnt_1610_1611_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module modtrans
//

module modtrans (mode, clk_c, clk_c_enable_151, \linecode[16] , kmodstate_ls, 
            kmodstate, n9, n6410, \linecode_87__N_2650[1] , GND_net, 
            n6408, n6409, en, \en_N_3200[0] , mode_key_c);
    output [1:0]mode;
    input clk_c;
    input clk_c_enable_151;
    input \linecode[16] ;
    output kmodstate_ls;
    output kmodstate;
    input [3:0]n9;
    input n6410;
    input \linecode_87__N_2650[1] ;
    input GND_net;
    input n6408;
    input n6409;
    output en;
    input \en_N_3200[0] ;
    input mode_key_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    
    wire n18359;
    wire [31:0]en_N_3200;
    
    wire n18404, n20567, n18371, n18405, n18403, n20590, n18762, 
        n18761, n18760, n18759, n18758;
    
    FD1P3AX tmpmpde_i0_i0 (.D(\linecode[16] ), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(mode[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=143, LSE_RLINE=143 */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(48[3] 62[10])
    defparam tmpmpde_i0_i0.GSR = "ENABLED";
    FD1S3AX kmodstate_ls_27 (.D(kmodstate), .CK(clk_c), .Q(kmodstate_ls)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=143, LSE_RLINE=143 */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(41[3] 43[10])
    defparam kmodstate_ls_27.GSR = "DISABLED";
    LUT4 i7079_2_lut (.A(n9[1]), .B(n9[3]), .Z(n18359)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:15])
    defparam i7079_2_lut.init = 16'h6666;
    LUT4 i7101_2_lut (.A(n9[0]), .B(n6410), .Z(en_N_3200[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7101_2_lut.init = 16'h6666;
    FD1P3AX tmpmpde_i0_i1 (.D(\linecode_87__N_2650[1] ), .SP(clk_c_enable_151), 
            .CK(clk_c), .Q(mode[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=13, LSE_LLINE=143, LSE_RLINE=143 */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(48[3] 62[10])
    defparam tmpmpde_i0_i1.GSR = "ENABLED";
    CCU2D add_3121_6 (.A0(n9[2]), .B0(n20567), .C0(GND_net), .D0(GND_net), 
          .A1(n9[3]), .B1(n18371), .C1(GND_net), .D1(GND_net), .CIN(n18404), 
          .COUT(n18405), .S0(en_N_3200[5]), .S1(en_N_3200[6]));   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:18])
    defparam add_3121_6.INIT0 = 16'h9666;
    defparam add_3121_6.INIT1 = 16'h9666;
    defparam add_3121_6.INJECT1_0 = "NO";
    defparam add_3121_6.INJECT1_1 = "NO";
    CCU2D add_3121_4 (.A0(n9[0]), .B0(n9[2]), .C0(n6408), .D0(GND_net), 
          .A1(n18359), .B1(n20590), .C1(GND_net), .D1(GND_net), .CIN(n18403), 
          .COUT(n18404), .S0(en_N_3200[3]), .S1(en_N_3200[4]));   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:18])
    defparam add_3121_4.INIT0 = 16'h9696;
    defparam add_3121_4.INIT1 = 16'h9666;
    defparam add_3121_4.INJECT1_0 = "NO";
    defparam add_3121_4.INJECT1_1 = "NO";
    CCU2D add_3121_2 (.A0(n9[0]), .B0(n6410), .C0(GND_net), .D0(GND_net), 
          .A1(n9[1]), .B1(n6409), .C1(GND_net), .D1(GND_net), .COUT(n18403), 
          .S1(en_N_3200[2]));   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:18])
    defparam add_3121_2.INIT0 = 16'h7000;
    defparam add_3121_2.INIT1 = 16'h5666;
    defparam add_3121_2.INJECT1_0 = "NO";
    defparam add_3121_2.INJECT1_1 = "NO";
    LUT4 i7074_2_lut_rep_131 (.A(n9[0]), .B(n9[2]), .Z(n20590)) /* synthesis lut_function=(A (B)) */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:15])
    defparam i7074_2_lut_rep_131.init = 16'h8888;
    LUT4 i7085_4_lut_3_lut_rep_108_4_lut (.A(n9[0]), .B(n9[2]), .C(n9[1]), 
         .D(n9[3]), .Z(n20567)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:15])
    defparam i7085_4_lut_3_lut_rep_108_4_lut.init = 16'hf880;
    LUT4 i7090_2_lut_4_lut_4_lut (.A(n9[0]), .B(n9[2]), .C(n9[1]), .D(n9[3]), 
         .Z(n18371)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C (D)))) */ ;   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:15])
    defparam i7090_2_lut_4_lut_4_lut.init = 16'hc880;
    CCU2D add_6796_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18762), 
          .S0(en));
    defparam add_6796_cout.INIT0 = 16'h0000;
    defparam add_6796_cout.INIT1 = 16'h0000;
    defparam add_6796_cout.INJECT1_0 = "NO";
    defparam add_6796_cout.INJECT1_1 = "NO";
    CCU2D add_6796_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18761), 
          .COUT(n18762));
    defparam add_6796_10.INIT0 = 16'hffff;
    defparam add_6796_10.INIT1 = 16'hffff;
    defparam add_6796_10.INJECT1_0 = "NO";
    defparam add_6796_10.INJECT1_1 = "NO";
    CCU2D add_6796_8 (.A0(en_N_3200[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(en_N_3200[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18760), .COUT(n18761));
    defparam add_6796_8.INIT0 = 16'h5555;
    defparam add_6796_8.INIT1 = 16'h5555;
    defparam add_6796_8.INJECT1_0 = "NO";
    defparam add_6796_8.INJECT1_1 = "NO";
    CCU2D add_6796_6 (.A0(en_N_3200[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(en_N_3200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18759), .COUT(n18760));
    defparam add_6796_6.INIT0 = 16'h5555;
    defparam add_6796_6.INIT1 = 16'h5555;
    defparam add_6796_6.INJECT1_0 = "NO";
    defparam add_6796_6.INJECT1_1 = "NO";
    CCU2D add_6796_4 (.A0(en_N_3200[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(en_N_3200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18758), .COUT(n18759));
    defparam add_6796_4.INIT0 = 16'h5aaa;
    defparam add_6796_4.INIT1 = 16'h5aaa;
    defparam add_6796_4.INJECT1_0 = "NO";
    defparam add_6796_4.INJECT1_1 = "NO";
    CCU2D add_6796_2 (.A0(en_N_3200[1]), .B0(\en_N_3200[0] ), .C0(GND_net), 
          .D0(GND_net), .A1(en_N_3200[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18758));
    defparam add_6796_2.INIT0 = 16'h1000;
    defparam add_6796_2.INIT1 = 16'h5555;
    defparam add_6796_2.INJECT1_0 = "NO";
    defparam add_6796_2.INJECT1_1 = "NO";
    CCU2D add_3121_8 (.A0(n9[3]), .B0(n18371), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18405), 
          .S0(en_N_3200[7]), .S1(en_N_3200[8]));   // c:/labcode6/impl1/source/modeswitch.vhd(68[7:18])
    defparam add_3121_8.INIT0 = 16'h7888;
    defparam add_3121_8.INIT1 = 16'h0000;
    defparam add_3121_8.INJECT1_0 = "NO";
    defparam add_3121_8.INJECT1_1 = "NO";
    CycleSampler MK (.clk_c(clk_c), .kmodstate(kmodstate), .mode_key_c(mode_key_c), 
            .GND_net(GND_net));   // c:/labcode6/impl1/source/modeswitch.vhd(37[5:17])
    
endmodule
//
// Verilog Description of module CycleSampler
//

module CycleSampler (clk_c, kmodstate, mode_key_c, GND_net);
    input clk_c;
    output kmodstate;
    input mode_key_c;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    wire [2:0]keystore;   // c:/labcode6/impl1/source/sample.vhd(21[9:17])
    
    wire keystate_N_3305, keystore_2__N_3302, btnstate_N_3301;
    wire [31:0]keysampulsecnt;   // c:/labcode6/impl1/source/sample.vhd(18[9:23])
    
    wire n42, keysampulse, keysampulse_N_3307, keysampulse_ls, n32, 
        n15576;
    wire [31:0]n133;
    
    wire n46, n43, n38, n40, n28, n9, n19916, n47, n45, n18644, 
        n18643, n18642, n18641, n18640, n18639, n18638, n18637, 
        n18636, n18635, n18634, n18633, n18632, n18631, n18630, 
        n18629;
    
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_3305)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/labcode6/impl1/source/sample.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_3301), .SP(keystore_2__N_3302), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    LUT4 i17_4_lut (.A(keysampulsecnt[5]), .B(keysampulsecnt[18]), .C(keysampulsecnt[9]), 
         .D(keysampulsecnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i17_4_lut.init = 16'hfffe;
    FD1S3AX keysampulse_31 (.D(keysampulse_N_3307), .CK(clk_c), .Q(keysampulse)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(28[3] 34[10])
    defparam keysampulse_31.GSR = "DISABLED";
    FD1S3AX keysampulse_ls_32 (.D(keysampulse), .CK(clk_c), .Q(keysampulse_ls)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(40[3] 42[10])
    defparam keysampulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_3305), .CK(clk_c), .Q(kmodstate)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    LUT4 i7_2_lut (.A(keysampulsecnt[25]), .B(keysampulsecnt[26]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i7_2_lut.init = 16'heeee;
    FD1S3IX keysampulsecnt_1612__i0 (.D(n133[0]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i0.GSR = "DISABLED";
    LUT4 i21_4_lut (.A(keysampulsecnt[23]), .B(n42), .C(n32), .D(keysampulsecnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(keysampulsecnt[8]), .B(keysampulsecnt[19]), .C(keysampulsecnt[13]), 
         .D(keysampulsecnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 keysampulse_I_0_37_2_lut (.A(keysampulse), .B(keysampulse_ls), 
         .Z(keystore_2__N_3302)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/sample.vhd(49[8:46])
    defparam keysampulse_I_0_37_2_lut.init = 16'h2222;
    LUT4 btnstate_I_0_1_lut (.A(mode_key_c), .Z(btnstate_N_3301)) /* synthesis lut_function=(!(A)) */ ;   // c:/labcode6/impl1/source/sample.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_3302), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_3302), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=5, LSE_RCOL=17, LSE_LLINE=37, LSE_RLINE=37 */ ;   // c:/labcode6/impl1/source/sample.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    LUT4 i13_3_lut (.A(keysampulsecnt[11]), .B(keysampulsecnt[30]), .C(keysampulsecnt[1]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(keysampulsecnt[17]), .B(keysampulsecnt[24]), .C(keysampulsecnt[20]), 
         .D(keysampulsecnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(keysampulsecnt[29]), .B(keysampulsecnt[28]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(keysampulse), .B(n15576), .Z(keysampulse_N_3307)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i8479_4_lut (.A(n9), .B(n19916), .C(keysampulsecnt[10]), .D(keysampulsecnt[16]), 
         .Z(n15576)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i8479_4_lut.init = 16'h4000;
    LUT4 i1_4_lut (.A(n47), .B(keysampulsecnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i8280_4_lut (.A(keysampulsecnt[14]), .B(keysampulsecnt[12]), .C(keysampulsecnt[6]), 
         .D(keysampulsecnt[7]), .Z(n19916)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8280_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(keysampulsecnt[3]), .C(n38), .D(keysampulsecnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(keysampulsecnt[31]), .B(n40), .C(n28), .D(keysampulsecnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/labcode6/impl1/source/sample.vhd(30[8:29])
    defparam i20_4_lut.init = 16'hfffe;
    CCU2D keysampulsecnt_1612_add_4_33 (.A0(keysampulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18644), .S0(n133[31]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_33.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_33.INIT1 = 16'h0000;
    defparam keysampulsecnt_1612_add_4_33.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_33.INJECT1_1 = "NO";
    FD1S3IX keysampulsecnt_1612__i1 (.D(n133[1]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i1.GSR = "DISABLED";
    CCU2D keysampulsecnt_1612_add_4_31 (.A0(keysampulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18643), .COUT(n18644), .S0(n133[29]), 
          .S1(n133[30]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_31.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_31.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_31.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_31.INJECT1_1 = "NO";
    FD1S3IX keysampulsecnt_1612__i2 (.D(n133[2]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i2.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i3 (.D(n133[3]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i3.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i4 (.D(n133[4]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i4.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i5 (.D(n133[5]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i5.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i6 (.D(n133[6]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i6.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i7 (.D(n133[7]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i7.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i8 (.D(n133[8]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i8.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i9 (.D(n133[9]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i9.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i10 (.D(n133[10]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i10.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i11 (.D(n133[11]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i11.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i12 (.D(n133[12]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i12.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i13 (.D(n133[13]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i13.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i14 (.D(n133[14]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i14.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i15 (.D(n133[15]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i15.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i16 (.D(n133[16]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i16.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i17 (.D(n133[17]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i17.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i18 (.D(n133[18]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i18.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i19 (.D(n133[19]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i19.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i20 (.D(n133[20]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i20.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i21 (.D(n133[21]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i21.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i22 (.D(n133[22]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i22.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i23 (.D(n133[23]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i23.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i24 (.D(n133[24]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i24.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i25 (.D(n133[25]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i25.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i26 (.D(n133[26]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i26.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i27 (.D(n133[27]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i27.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i28 (.D(n133[28]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i28.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i29 (.D(n133[29]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i29.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i30 (.D(n133[30]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i30.GSR = "DISABLED";
    FD1S3IX keysampulsecnt_1612__i31 (.D(n133[31]), .CK(clk_c), .CD(n15576), 
            .Q(keysampulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612__i31.GSR = "DISABLED";
    CCU2D keysampulsecnt_1612_add_4_29 (.A0(keysampulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18642), .COUT(n18643), .S0(n133[27]), 
          .S1(n133[28]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_29.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_29.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_29.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_29.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_27 (.A0(keysampulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18641), .COUT(n18642), .S0(n133[25]), 
          .S1(n133[26]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_27.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_27.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_27.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_27.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_25 (.A0(keysampulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18640), .COUT(n18641), .S0(n133[23]), 
          .S1(n133[24]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_25.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_25.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_25.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_25.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_23 (.A0(keysampulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18639), .COUT(n18640), .S0(n133[21]), 
          .S1(n133[22]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_23.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_23.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_23.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_23.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_21 (.A0(keysampulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18638), .COUT(n18639), .S0(n133[19]), 
          .S1(n133[20]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_21.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_21.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_21.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_21.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_19 (.A0(keysampulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18637), .COUT(n18638), .S0(n133[17]), 
          .S1(n133[18]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_19.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_19.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_19.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_19.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_17 (.A0(keysampulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18636), .COUT(n18637), .S0(n133[15]), 
          .S1(n133[16]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_17.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_17.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_17.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_17.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_15 (.A0(keysampulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18635), .COUT(n18636), .S0(n133[13]), 
          .S1(n133[14]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_15.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_15.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_15.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_15.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_13 (.A0(keysampulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18634), .COUT(n18635), .S0(n133[11]), 
          .S1(n133[12]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_13.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_13.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_13.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_13.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_11 (.A0(keysampulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18633), .COUT(n18634), .S0(n133[9]), 
          .S1(n133[10]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_11.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_11.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_11.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_11.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_9 (.A0(keysampulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18632), .COUT(n18633), .S0(n133[7]), 
          .S1(n133[8]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_9.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_9.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_9.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_9.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_7 (.A0(keysampulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18631), .COUT(n18632), .S0(n133[5]), 
          .S1(n133[6]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_7.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_7.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_7.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_7.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_5 (.A0(keysampulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18630), .COUT(n18631), .S0(n133[3]), 
          .S1(n133[4]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_5.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_5.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_5.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_5.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_3 (.A0(keysampulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysampulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18629), .COUT(n18630), .S0(n133[1]), 
          .S1(n133[2]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_3.INIT0 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_3.INIT1 = 16'hfaaa;
    defparam keysampulsecnt_1612_add_4_3.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_3.INJECT1_1 = "NO";
    CCU2D keysampulsecnt_1612_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysampulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n18629), .S1(n133[0]));   // c:/labcode6/impl1/source/sample.vhd(29[20:34])
    defparam keysampulsecnt_1612_add_4_1.INIT0 = 16'hF000;
    defparam keysampulsecnt_1612_add_4_1.INIT1 = 16'h0555;
    defparam keysampulsecnt_1612_add_4_1.INJECT1_0 = "NO";
    defparam keysampulsecnt_1612_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module toC
//

module toC (clk_c, \sample[1] , \sample[2] , \sample[3] , \sample[4] , 
            \sample[5] , \sample[6] , \sample[7] , \sample[8] , \sample[9] , 
            \sample[10] , d3, n11, clk_c_enable_272, \sample[0] , 
            GND_net, \tempC[4][0] , n9, \tempC[2][0] , n9_adj_1, \tempC[3][0] , 
            \en_N_3200[0] , \tempC[0][0] , n9_adj_2, \tempC[1][0] , 
            n9_adj_3, clk_c_enable_105, n19748, \tempC[4][1] , \tempC[4][2] , 
            \tempC[4][3] , n50, n49, n48, n9476, n47, n46, n45, 
            n44, n43, n42, n41, n40, n39, n38, n37, n36, n35, 
            n34, n33, n32, n31, n30, n29, n28, n27, n26, n25, 
            \tempC[2][1] , \tempC[2][2] , \tempC[2][3] , n189, n188, 
            n187, n12950, n186, n185, n184, n183, n182, n181, 
            n180, n179, n178, n177, n176, n175, n174, n173, 
            n12965, \tempC[3][1] , \tempC[3][2] , \tempC[3][3] , n103, 
            n102, n101, n100, n13913, n99, n98, n97, n96, n95, 
            n94, n93, n92, n91, n90, n89, n88, n87, n86, n85, 
            n84, n83, n82, n81, n80, n13934, n6410, n6409, n6408, 
            \tempC[0][1] , \tempC[0][2] , \tempC[0][3] , \Fahrenheit[2] , 
            n349, n348, n12445, n347, n346, n345, n344, n343, 
            n342, n341, n340, n339, n12455, \tempC[1][1] , \tempC[1][2] , 
            \tempC[1][3] , n271, n270, n269, n268, n265, n11764, 
            n264, n263, n262, n261, n260, n259, n11771);
    input clk_c;
    input \sample[1] ;
    input \sample[2] ;
    input \sample[3] ;
    input \sample[4] ;
    input \sample[5] ;
    input \sample[6] ;
    input \sample[7] ;
    input \sample[8] ;
    input \sample[9] ;
    input \sample[10] ;
    output [3:0]d3;
    input n11;
    output clk_c_enable_272;
    input \sample[0] ;
    input GND_net;
    output \tempC[4][0] ;
    output [3:0]n9;
    output \tempC[2][0] ;
    output [3:0]n9_adj_1;
    output \tempC[3][0] ;
    output \en_N_3200[0] ;
    output \tempC[0][0] ;
    output [3:0]n9_adj_2;
    output \tempC[1][0] ;
    output [3:0]n9_adj_3;
    input clk_c_enable_105;
    output n19748;
    output \tempC[4][1] ;
    output \tempC[4][2] ;
    output \tempC[4][3] ;
    output n50;
    output n49;
    output n48;
    input [23:0]n9476;
    output n47;
    output n46;
    output n45;
    output n44;
    output n43;
    output n42;
    output n41;
    output n40;
    output n39;
    output n38;
    output n37;
    output n36;
    output n35;
    output n34;
    output n33;
    output n32;
    output n31;
    output n30;
    output n29;
    output n28;
    output n27;
    output n26;
    output n25;
    output \tempC[2][1] ;
    output \tempC[2][2] ;
    output \tempC[2][3] ;
    output n189;
    output n188;
    output n187;
    input [13:0]n12950;
    output n186;
    output n185;
    output n184;
    output n183;
    output n182;
    output n181;
    output n180;
    output n179;
    output n178;
    output n177;
    output n176;
    output n175;
    output n174;
    output n173;
    input n12965;
    output \tempC[3][1] ;
    output \tempC[3][2] ;
    output \tempC[3][3] ;
    output n103;
    output n102;
    output n101;
    output n100;
    input [19:0]n13913;
    output n99;
    output n98;
    output n97;
    output n96;
    output n95;
    output n94;
    output n93;
    output n92;
    output n91;
    output n90;
    output n89;
    output n88;
    output n87;
    output n86;
    output n85;
    output n84;
    output n83;
    output n82;
    output n81;
    output n80;
    input n13934;
    output n6410;
    output n6409;
    output n6408;
    output \tempC[0][1] ;
    output \tempC[0][2] ;
    output \tempC[0][3] ;
    output \Fahrenheit[2] ;
    output n349;
    output n348;
    input [8:0]n12445;
    output n347;
    output n346;
    output n345;
    output n344;
    output n343;
    output n342;
    output n341;
    output n340;
    output n339;
    input n12455;
    output \tempC[1][1] ;
    output \tempC[1][2] ;
    output \tempC[1][3] ;
    output n271;
    output n270;
    output n269;
    output n268;
    output n265;
    input [5:0]n11764;
    output n264;
    output n263;
    output n262;
    output n261;
    output n260;
    output n259;
    input n11771;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/labcode6/impl1/source/top.vhd(13[2:5])
    wire [6:0]tmp;   // c:/labcode6/impl1/source/toc.vhd(113[10:13])
    
    wire n2141;
    wire [6:0]n2;
    wire [31:0]Data11;   // c:/labcode6/impl1/source/toc.vhd(28[8:14])
    wire [31:0]Data21;   // c:/labcode6/impl1/source/toc.vhd(29[8:14])
    wire [31:0]Data31;   // c:/labcode6/impl1/source/toc.vhd(30[8:14])
    wire [31:0]Data41;   // c:/labcode6/impl1/source/toc.vhd(31[8:14])
    wire [31:0]Data51;   // c:/labcode6/impl1/source/toc.vhd(32[8:14])
    wire [31:0]Data61;   // c:/labcode6/impl1/source/toc.vhd(33[8:14])
    wire [31:0]DataOut_integer;   // c:/labcode6/impl1/source/toc.vhd(24[8:23])
    wire [31:0]DataOut_integer_31__N_415;
    wire [31:0]Data71;   // c:/labcode6/impl1/source/toc.vhd(34[8:14])
    wire [31:0]Data81;   // c:/labcode6/impl1/source/toc.vhd(35[8:14])
    wire [31:0]Data91;   // c:/labcode6/impl1/source/toc.vhd(36[8:14])
    wire [31:0]Data101;   // c:/labcode6/impl1/source/toc.vhd(37[8:15])
    wire [31:0]DataOut_decimal;   // c:/labcode6/impl1/source/toc.vhd(25[8:23])
    wire [31:0]DataOut_decimal_31__N_447;
    
    wire clk_c_enable_108;
    wire [3:0]d4;   // c:/labcode6/impl1/source/toc.vhd(58[17:19])
    
    wire n2168;
    wire [3:0]n15;
    wire [13:0]tmp1;   // c:/labcode6/impl1/source/toc.vhd(161[10:14])
    wire [13:0]n61;
    
    wire d20;
    wire [3:0]d2;   // c:/labcode6/impl1/source/toc.vhd(58[11:13])
    
    wire d21, d22, d23, d30;
    wire [42:0]DataOut_decimal_31__N_1207;
    wire [3:0]d1;   // c:/labcode6/impl1/source/toc.vhd(58[8:10])
    
    wire n14;
    wire [3:0]db;   // c:/labcode6/impl1/source/toc.vhd(51[11:13])
    wire [3:0]n15_adj_3497;
    wire [3:0]da;   // c:/labcode6/impl1/source/toc.vhd(51[8:10])
    
    wire n2139;
    wire [3:0]n21;
    
    wire db0, clk_c_enable_237, n18523, n8741, n18522, n18521;
    wire [10:0]n8729;
    
    wire d31;
    wire [3:0]d3_c;   // c:/labcode6/impl1/source/toc.vhd(58[14:16])
    
    wire d32, n2160;
    wire [3:0]n21_adj_3498;
    
    wire d33, d40, da0, d41, n5096;
    wire [3:0]n15_adj_3502;
    
    wire d42, da1, n1959, d43, da2, n1, da3, db1, db2;
    wire [3:0]n2009;
    
    wire db3;
    wire [31:0]n2_adj_3503;
    wire [5:0]n14466;
    
    wire n14_adj_3483, n18418, n18417;
    wire [3:0]n1986;
    wire [3:0]n1961;
    
    wire n18416, n19730, clk_c_enable_275, n5, n19888, n18675, clk_c_enable_135;
    wire [3:0]n954;
    
    wire n18674, n18673, n18672, n18671, n18670, n18415, n18669, 
        n18668, n18667, n18666, n18414, n18665, n6, n4, n18664, 
        n6_adj_3487, n18663, n18662, n18413, n18412, n6_adj_3495, 
        n18439, n18438, n14473, n18437, n18436, n18390, n18389, 
        n18388, n18757, n18756, n18755;
    
    FD1S3IX tmp_1603__i5 (.D(n2[5]), .CK(clk_c), .CD(n2141), .Q(tmp[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i5.GSR = "DISABLED";
    FD1S3AX Data1_285 (.D(\sample[1] ), .CK(clk_c), .Q(Data11[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data1_285.GSR = "DISABLED";
    FD1S3AX Data2_287 (.D(\sample[2] ), .CK(clk_c), .Q(Data21[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data2_287.GSR = "DISABLED";
    FD1S3AX Data3_289 (.D(\sample[3] ), .CK(clk_c), .Q(Data31[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data3_289.GSR = "DISABLED";
    FD1S3AX Data4_291 (.D(\sample[4] ), .CK(clk_c), .Q(Data41[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data4_291.GSR = "DISABLED";
    FD1S3AX Data5_293 (.D(\sample[5] ), .CK(clk_c), .Q(Data51[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data5_293.GSR = "DISABLED";
    FD1S3AX Data6_295 (.D(\sample[6] ), .CK(clk_c), .Q(Data61[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data6_295.GSR = "DISABLED";
    FD1S3AX DataOut_integer_i1 (.D(DataOut_integer_31__N_415[0]), .CK(clk_c), 
            .Q(DataOut_integer[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i1.GSR = "DISABLED";
    FD1S3AX Data7_297 (.D(\sample[7] ), .CK(clk_c), .Q(Data71[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data7_297.GSR = "DISABLED";
    FD1S3AX Data8_299 (.D(\sample[8] ), .CK(clk_c), .Q(Data81[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data8_299.GSR = "DISABLED";
    FD1S3AX Data9_301 (.D(\sample[9] ), .CK(clk_c), .Q(Data91[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data9_301.GSR = "DISABLED";
    FD1S3AX Data10_303 (.D(\sample[10] ), .CK(clk_c), .Q(Data101[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data10_303.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i0 (.D(DataOut_decimal_31__N_447[4]), .CK(clk_c), 
            .Q(DataOut_decimal[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i0.GSR = "DISABLED";
    FD1S3IX d3__i0 (.D(n11), .CK(clk_c), .CD(clk_c_enable_108), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d3__i0.GSR = "DISABLED";
    FD1S3IX tmp_1603__i4 (.D(n2[4]), .CK(clk_c), .CD(n2141), .Q(tmp[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i4.GSR = "DISABLED";
    FD1S3IX d4__i0 (.D(n15[0]), .CK(clk_c), .CD(n2168), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d4__i0.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i0 (.D(n61[0]), .CK(clk_c), .CD(n2168), .Q(tmp1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i0.GSR = "DISABLED";
    FD1P3AX d20_358 (.D(d2[0]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d20)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d20_358.GSR = "DISABLED";
    FD1P3AX d21_356 (.D(d2[1]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d21)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d21_356.GSR = "DISABLED";
    FD1P3AX d22_354 (.D(d2[2]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d22)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d22_354.GSR = "DISABLED";
    FD1P3AX d23_352 (.D(d2[3]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d23)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d23_352.GSR = "DISABLED";
    FD1P3AX d30_350 (.D(d3[0]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d30)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d30_350.GSR = "DISABLED";
    FD1S3AX Data0_283 (.D(\sample[0] ), .CK(clk_c), .Q(DataOut_decimal_31__N_1207[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data0_283.GSR = "DISABLED";
    FD1S3IX tmp_1603__i3 (.D(n2[3]), .CK(clk_c), .CD(n2141), .Q(tmp[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i3.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(d1[0]), .B(d1[2]), .C(d1[1]), .D(d1[3]), .Z(n14)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/labcode6/impl1/source/toc.vhd(182[10:14])
    defparam i3_4_lut.init = 16'hfdff;
    FD1S3IX db__i0 (.D(n15_adj_3497[0]), .CK(clk_c), .CD(n2141), .Q(db[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db__i0.GSR = "DISABLED";
    FD1S3IX da_1602__i0 (.D(n21[0]), .CK(clk_c), .CD(n2139), .Q(da[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1602__i0.GSR = "DISABLED";
    FD1S3IX tmp_1603__i2 (.D(n2[2]), .CK(clk_c), .CD(n2141), .Q(tmp[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i2.GSR = "DISABLED";
    FD1S3IX tmp_1603__i1 (.D(n2[1]), .CK(clk_c), .CD(n2141), .Q(tmp[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i1.GSR = "DISABLED";
    FD1P3AX db0_316 (.D(db[0]), .SP(clk_c_enable_237), .CK(clk_c), .Q(db0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db0_316.GSR = "DISABLED";
    CCU2D add_2930_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18523), 
          .S0(n8741));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_2930_cout.INIT0 = 16'h0000;
    defparam add_2930_cout.INIT1 = 16'h0000;
    defparam add_2930_cout.INJECT1_0 = "NO";
    defparam add_2930_cout.INJECT1_1 = "NO";
    CCU2D add_2930_6 (.A0(DataOut_decimal_31__N_1207[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Data11[0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18522), .COUT(n18523));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_2930_6.INIT0 = 16'h5aaa;
    defparam add_2930_6.INIT1 = 16'hfaaa;
    defparam add_2930_6.INJECT1_0 = "NO";
    defparam add_2930_6.INJECT1_1 = "NO";
    CCU2D add_2930_4 (.A0(Data11[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18521), 
          .COUT(n18522), .S0(n8729[7]), .S1(n8729[8]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_2930_4.INIT0 = 16'hfaaa;
    defparam add_2930_4.INIT1 = 16'hf000;
    defparam add_2930_4.INJECT1_0 = "NO";
    defparam add_2930_4.INJECT1_1 = "NO";
    CCU2D add_2930_2 (.A0(DataOut_decimal_31__N_1207[9]), .B0(Data11[0]), 
          .C0(GND_net), .D0(GND_net), .A1(DataOut_decimal_31__N_1207[9]), 
          .B1(Data11[0]), .C1(GND_net), .D1(GND_net), .COUT(n18521), 
          .S1(n8729[6]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_2930_2.INIT0 = 16'h7000;
    defparam add_2930_2.INIT1 = 16'h5666;
    defparam add_2930_2.INJECT1_0 = "NO";
    defparam add_2930_2.INJECT1_1 = "NO";
    FD1P3AX No_Name__i1 (.D(db0), .SP(clk_c_enable_237), .CK(clk_c), .Q(\tempC[4][0] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name__i1.GSR = "DISABLED";
    FD1S3AX Data41_ret14_i1 (.D(Data41[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[0]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data41_ret14_i1.GSR = "DISABLED";
    FD1S3AX Data101_ret13_i1 (.D(Data71[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[3]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data101_ret13_i1.GSR = "DISABLED";
    FD1P3AX d31_348 (.D(d3_c[1]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d31)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d31_348.GSR = "DISABLED";
    FD1P3AX d32_346 (.D(d3_c[2]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d32)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d32_346.GSR = "DISABLED";
    FD1S3IX d1_1604__i3 (.D(n21_adj_3498[3]), .CK(clk_c), .CD(n2160), 
            .Q(d1[3]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam d1_1604__i3.GSR = "DISABLED";
    FD1P3AX d33_344 (.D(d3_c[3]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d33)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d33_344.GSR = "DISABLED";
    FD1P3AX DataOut_4__rep_5__i0 (.D(\tempC[4][0] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n9[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__rep_5__i0.GSR = "DISABLED";
    FD1P3AX No_Name_2703__i1 (.D(d40), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[2][0] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2703__i1.GSR = "DISABLED";
    FD1P3AX DataOut_2__rep_4__i0 (.D(\tempC[2][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_1[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__rep_4__i0.GSR = "DISABLED";
    FD1S3IX d1_1604__i2 (.D(n21_adj_3498[2]), .CK(clk_c), .CD(n2160), 
            .Q(d1[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam d1_1604__i2.GSR = "DISABLED";
    FD1P3AX No_Name_2702__i1 (.D(da0), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(\tempC[3][0] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2702__i1.GSR = "DISABLED";
    FD1P3AX d40_339 (.D(d4[0]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d40)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d40_339.GSR = "DISABLED";
    FD1P3AX DataOut_3__rep_3__i0 (.D(\tempC[3][0] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(\en_N_3200[0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__rep_3__i0.GSR = "DISABLED";
    FD1P3AX No_Name_2701__i1 (.D(d20), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[0][0] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2701__i1.GSR = "DISABLED";
    FD1P3AX d41_337 (.D(d4[1]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d41)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d41_337.GSR = "DISABLED";
    FD1P3AX DataOut_0__rep_2__i0 (.D(\tempC[0][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_2[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__rep_2__i0.GSR = "DISABLED";
    FD1P3AX No_Name_2700__i1 (.D(d30), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[1][0] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2700__i1.GSR = "DISABLED";
    FD1P3AX DataOut_1__rep_1__i0 (.D(\tempC[1][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_3[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__rep_1__i0.GSR = "DISABLED";
    FD1S3IX d2__i0 (.D(n15_adj_3502[0]), .CK(clk_c), .CD(n5096), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d2__i0.GSR = "DISABLED";
    FD1P3AX d42_335 (.D(d4[2]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d42)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d42_335.GSR = "DISABLED";
    FD1P3AX da0_326 (.D(da[0]), .SP(clk_c_enable_237), .CK(clk_c), .Q(da0)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam da0_326.GSR = "DISABLED";
    FD1P3AX da1_324 (.D(da[1]), .SP(clk_c_enable_237), .CK(clk_c), .Q(da1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam da1_324.GSR = "DISABLED";
    FD1S3IX d1_1604__i1 (.D(n21_adj_3498[1]), .CK(clk_c), .CD(n2160), 
            .Q(d1[1]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam d1_1604__i1.GSR = "DISABLED";
    LUT4 i290_2_lut_rep_59 (.A(n1959), .B(clk_c_enable_272), .Z(clk_c_enable_108)) /* synthesis lut_function=(A+(B)) */ ;   // c:/labcode6/impl1/source/toc.vhd(164[6] 239[10])
    defparam i290_2_lut_rep_59.init = 16'heeee;
    LUT4 i2880_2_lut_3_lut (.A(n1959), .B(clk_c_enable_272), .C(d4[0]), 
         .Z(n15[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/labcode6/impl1/source/toc.vhd(164[6] 239[10])
    defparam i2880_2_lut_3_lut.init = 16'h1e1e;
    FD1P3AX d43_333 (.D(d4[3]), .SP(clk_c_enable_272), .CK(clk_c), .Q(d43)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d43_333.GSR = "DISABLED";
    FD1P3AX da2_322 (.D(da[2]), .SP(clk_c_enable_237), .CK(clk_c), .Q(da2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam da2_322.GSR = "DISABLED";
    FD1S3IX d1_1604__i0 (.D(n1), .CK(clk_c), .CD(n2160), .Q(d1[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam d1_1604__i0.GSR = "DISABLED";
    FD1P3AX da3_320 (.D(da[3]), .SP(clk_c_enable_237), .CK(clk_c), .Q(da3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam da3_320.GSR = "DISABLED";
    LUT4 i7109_2_lut (.A(DataOut_decimal_31__N_1207[9]), .B(Data11[0]), 
         .Z(n8729[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7109_2_lut.init = 16'h6666;
    FD1P3AX db1_314 (.D(db[1]), .SP(clk_c_enable_237), .CK(clk_c), .Q(db1)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db1_314.GSR = "DISABLED";
    FD1P3AX db2_312 (.D(db[2]), .SP(clk_c_enable_237), .CK(clk_c), .Q(db2)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db2_312.GSR = "DISABLED";
    LUT4 i1955_2_lut (.A(d2[1]), .B(d2[0]), .Z(n2009[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1955_2_lut.init = 16'h6666;
    FD1P3AX db3_310 (.D(db[3]), .SP(clk_c_enable_237), .CK(clk_c), .Q(db3)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db3_310.GSR = "DISABLED";
    LUT4 i7130_2_lut (.A(n2_adj_3503[7]), .B(DataOut_decimal_31__N_447[3]), 
         .Z(n14466[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7130_2_lut.init = 16'h6666;
    FD1S3IX tmp_1603__i6 (.D(n2[6]), .CK(clk_c), .CD(n2141), .Q(tmp[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i6.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_69 (.A(da[0]), .B(da[1]), .C(da[2]), .D(da[3]), 
         .Z(n14_adj_3483)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_69.init = 16'hfdff;
    FD1S3AX DataOut_integer_i2 (.D(DataOut_integer_31__N_415[1]), .CK(clk_c), 
            .Q(DataOut_integer[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i2.GSR = "DISABLED";
    CCU2D tmp1_1605_add_4_15 (.A0(tmp1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18418), .S0(n61[13]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_15.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_15.INIT1 = 16'h0000;
    defparam tmp1_1605_add_4_15.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_15.INJECT1_1 = "NO";
    CCU2D tmp1_1605_add_4_13 (.A0(tmp1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18417), .COUT(n18418), .S0(n61[11]), .S1(n61[12]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_13.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_13.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_13.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_13.INJECT1_1 = "NO";
    FD1S3AX DataOut_integer_i3 (.D(DataOut_integer_31__N_415[2]), .CK(clk_c), 
            .Q(DataOut_integer[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i3.GSR = "DISABLED";
    FD1S3AX DataOut_integer_i4 (.D(DataOut_integer_31__N_415[3]), .CK(clk_c), 
            .Q(DataOut_integer[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i4.GSR = "DISABLED";
    FD1S3AX DataOut_integer_i5 (.D(DataOut_integer_31__N_415[4]), .CK(clk_c), 
            .Q(DataOut_integer[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i5.GSR = "DISABLED";
    FD1S3AX DataOut_integer_i6 (.D(DataOut_integer_31__N_415[5]), .CK(clk_c), 
            .Q(DataOut_integer[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i6.GSR = "DISABLED";
    FD1S3AX DataOut_integer_i7 (.D(DataOut_integer_31__N_415[6]), .CK(clk_c), 
            .Q(DataOut_integer[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_integer_i7.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i1 (.D(DataOut_decimal_31__N_447[1]), .CK(clk_c), 
            .Q(DataOut_decimal[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i1.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i2 (.D(DataOut_decimal_31__N_447[2]), .CK(clk_c), 
            .Q(DataOut_decimal[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i2.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i3 (.D(DataOut_decimal_31__N_447[3]), .CK(clk_c), 
            .Q(DataOut_decimal[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i3.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i5 (.D(DataOut_decimal_31__N_447[5]), .CK(clk_c), 
            .Q(DataOut_decimal[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i5.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i6 (.D(DataOut_decimal_31__N_447[6]), .CK(clk_c), 
            .Q(DataOut_decimal[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i6.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i7 (.D(DataOut_decimal_31__N_447[7]), .CK(clk_c), 
            .Q(DataOut_decimal[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i7.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i8 (.D(DataOut_decimal_31__N_447[8]), .CK(clk_c), 
            .Q(DataOut_decimal[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i8.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i9 (.D(DataOut_decimal_31__N_447[9]), .CK(clk_c), 
            .Q(DataOut_decimal[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i9.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i10 (.D(DataOut_decimal_31__N_447[10]), .CK(clk_c), 
            .Q(DataOut_decimal[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i10.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i11 (.D(DataOut_decimal_31__N_447[11]), .CK(clk_c), 
            .Q(DataOut_decimal[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i11.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i12 (.D(DataOut_decimal_31__N_447[12]), .CK(clk_c), 
            .Q(DataOut_decimal[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i12.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i13 (.D(DataOut_decimal_31__N_447[13]), .CK(clk_c), 
            .Q(DataOut_decimal[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i13.GSR = "DISABLED";
    FD1S3AX DataOut_decimal_i14 (.D(DataOut_decimal_31__N_447[14]), .CK(clk_c), 
            .Q(DataOut_decimal[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam DataOut_decimal_i14.GSR = "DISABLED";
    FD1P3IX d3__i1 (.D(n1986[1]), .SP(clk_c_enable_105), .CD(clk_c_enable_108), 
            .CK(clk_c), .Q(d3_c[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d3__i1.GSR = "DISABLED";
    FD1P3IX d3__i2 (.D(n1986[2]), .SP(clk_c_enable_105), .CD(clk_c_enable_108), 
            .CK(clk_c), .Q(d3_c[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d3__i2.GSR = "DISABLED";
    FD1P3IX d3__i3 (.D(n1986[3]), .SP(clk_c_enable_105), .CD(clk_c_enable_108), 
            .CK(clk_c), .Q(d3_c[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d3__i3.GSR = "DISABLED";
    FD1P3IX d4__i1 (.D(n1961[1]), .SP(clk_c_enable_108), .CD(n2168), .CK(clk_c), 
            .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d4__i1.GSR = "DISABLED";
    FD1P3IX d4__i2 (.D(n1961[2]), .SP(clk_c_enable_108), .CD(n2168), .CK(clk_c), 
            .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d4__i2.GSR = "DISABLED";
    FD1P3IX d4__i3 (.D(n1961[3]), .SP(clk_c_enable_108), .CD(n2168), .CK(clk_c), 
            .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d4__i3.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i1 (.D(n61[1]), .CK(clk_c), .CD(n2168), .Q(tmp1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i1.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i2 (.D(n61[2]), .CK(clk_c), .CD(n2168), .Q(tmp1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i2.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i3 (.D(n61[3]), .CK(clk_c), .CD(n2168), .Q(tmp1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i3.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i4 (.D(n61[4]), .CK(clk_c), .CD(n2168), .Q(tmp1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i4.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i5 (.D(n61[5]), .CK(clk_c), .CD(n2168), .Q(tmp1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i5.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i6 (.D(n61[6]), .CK(clk_c), .CD(n2168), .Q(tmp1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i6.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i7 (.D(n61[7]), .CK(clk_c), .CD(n2168), .Q(tmp1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i7.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i8 (.D(n61[8]), .CK(clk_c), .CD(n2168), .Q(tmp1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i8.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i9 (.D(n61[9]), .CK(clk_c), .CD(n2168), .Q(tmp1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i9.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i10 (.D(n61[10]), .CK(clk_c), .CD(n2168), .Q(tmp1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i10.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i11 (.D(n61[11]), .CK(clk_c), .CD(n2168), .Q(tmp1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i11.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i12 (.D(n61[12]), .CK(clk_c), .CD(n2168), .Q(tmp1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i12.GSR = "DISABLED";
    FD1S3IX tmp1_1605__i13 (.D(n61[13]), .CK(clk_c), .CD(n2168), .Q(tmp1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605__i13.GSR = "DISABLED";
    CCU2D tmp1_1605_add_4_11 (.A0(tmp1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18416), .COUT(n18417), .S0(n61[9]), .S1(n61[10]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_11.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_11.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_11.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_62 (.A(clk_c_enable_272), .B(n19730), .Z(clk_c_enable_275)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_62.init = 16'heeee;
    LUT4 i6872_2_lut_3_lut (.A(da[1]), .B(da[0]), .C(da[2]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6872_2_lut_3_lut.init = 16'h7878;
    LUT4 i6879_3_lut_4_lut (.A(da[1]), .B(da[0]), .C(da[2]), .D(da[3]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6879_3_lut_4_lut.init = 16'h7f80;
    LUT4 i286_2_lut (.A(n14), .B(clk_c_enable_272), .Z(n2160)) /* synthesis lut_function=((B)+!A) */ ;   // c:/labcode6/impl1/source/toc.vhd(164[6] 239[10])
    defparam i286_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut (.A(clk_c_enable_272), .B(n5), .C(n19730), .D(n19888), 
         .Z(n5096)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'haaea;
    LUT4 i8252_2_lut (.A(d2[1]), .B(d2[2]), .Z(n19888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8252_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(d1[1]), .B(d1[3]), .C(d1[2]), .D(d1[0]), .Z(n19730)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i2890_2_lut_3_lut (.A(clk_c_enable_272), .B(n19730), .C(d2[0]), 
         .Z(n15_adj_3502[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i2890_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i3_4_lut_adj_70 (.A(n14), .B(d2[2]), .C(d2[1]), .D(n5), .Z(n19748)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_70.init = 16'hfeff;
    CCU2D sub_968_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18675), .S0(clk_c_enable_237));
    defparam sub_968_add_2_cout.INIT0 = 16'h0000;
    defparam sub_968_add_2_cout.INIT1 = 16'h0000;
    defparam sub_968_add_2_cout.INJECT1_0 = "NO";
    defparam sub_968_add_2_cout.INJECT1_1 = "NO";
    FD1P3IX db__i1 (.D(n954[1]), .SP(clk_c_enable_135), .CD(n2141), .CK(clk_c), 
            .Q(db[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db__i1.GSR = "DISABLED";
    FD1P3IX db__i2 (.D(n954[2]), .SP(clk_c_enable_135), .CD(n2141), .CK(clk_c), 
            .Q(db[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db__i2.GSR = "DISABLED";
    FD1P3IX db__i3 (.D(n954[3]), .SP(clk_c_enable_135), .CD(n2141), .CK(clk_c), 
            .Q(db[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam db__i3.GSR = "DISABLED";
    LUT4 i6836_2_lut (.A(d1[1]), .B(d1[0]), .Z(n21_adj_3498[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6836_2_lut.init = 16'h6666;
    CCU2D sub_968_add_2_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18674), 
          .COUT(n18675));
    defparam sub_968_add_2_9.INIT0 = 16'hffff;
    defparam sub_968_add_2_9.INIT1 = 16'hffff;
    defparam sub_968_add_2_9.INJECT1_0 = "NO";
    defparam sub_968_add_2_9.INJECT1_1 = "NO";
    LUT4 i1875_2_lut_3_lut (.A(db[1]), .B(db[0]), .C(db[2]), .Z(n954[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1875_2_lut_3_lut.init = 16'h7878;
    LUT4 i1882_3_lut_4_lut (.A(db[1]), .B(db[0]), .C(db[2]), .D(db[3]), 
         .Z(n954[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1882_3_lut_4_lut.init = 16'h7f80;
    CCU2D sub_968_add_2_7 (.A0(tmp[5]), .B0(DataOut_integer[5]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[6]), .B1(DataOut_integer[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18673), .COUT(n18674));
    defparam sub_968_add_2_7.INIT0 = 16'h5999;
    defparam sub_968_add_2_7.INIT1 = 16'h5999;
    defparam sub_968_add_2_7.INJECT1_0 = "NO";
    defparam sub_968_add_2_7.INJECT1_1 = "NO";
    FD1S3IX da_1602__i1 (.D(n21[1]), .CK(clk_c), .CD(n2139), .Q(da[1]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1602__i1.GSR = "DISABLED";
    FD1S3IX da_1602__i2 (.D(n21[2]), .CK(clk_c), .CD(n2139), .Q(da[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1602__i2.GSR = "DISABLED";
    FD1S3IX da_1602__i3 (.D(n21[3]), .CK(clk_c), .CD(n2139), .Q(da[3]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam da_1602__i3.GSR = "DISABLED";
    CCU2D sub_968_add_2_5 (.A0(tmp[3]), .B0(DataOut_integer[3]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[4]), .B1(DataOut_integer[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18672), .COUT(n18673));
    defparam sub_968_add_2_5.INIT0 = 16'h5999;
    defparam sub_968_add_2_5.INIT1 = 16'h5999;
    defparam sub_968_add_2_5.INJECT1_0 = "NO";
    defparam sub_968_add_2_5.INJECT1_1 = "NO";
    LUT4 i2651_1_lut (.A(d1[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/labcode6/impl1/source/toc.vhd(182[10:14])
    defparam i2651_1_lut.init = 16'h5555;
    CCU2D sub_968_add_2_3 (.A0(tmp[1]), .B0(DataOut_integer[1]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[2]), .B1(DataOut_integer[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18671), .COUT(n18672));
    defparam sub_968_add_2_3.INIT0 = 16'h5999;
    defparam sub_968_add_2_3.INIT1 = 16'h5999;
    defparam sub_968_add_2_3.INJECT1_0 = "NO";
    defparam sub_968_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_968_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[0]), .B1(DataOut_integer[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n18671));
    defparam sub_968_add_2_1.INIT0 = 16'h0000;
    defparam sub_968_add_2_1.INIT1 = 16'h5999;
    defparam sub_968_add_2_1.INJECT1_0 = "NO";
    defparam sub_968_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18670), .S0(clk_c_enable_272));
    defparam sub_970_add_2_cout.INIT0 = 16'h0000;
    defparam sub_970_add_2_cout.INIT1 = 16'h0000;
    defparam sub_970_add_2_cout.INJECT1_0 = "NO";
    defparam sub_970_add_2_cout.INJECT1_1 = "NO";
    LUT4 i7102_2_lut (.A(n2_adj_3503[6]), .B(DataOut_decimal_31__N_447[2]), 
         .Z(DataOut_decimal_31__N_447[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7102_2_lut.init = 16'h6666;
    CCU2D tmp1_1605_add_4_9 (.A0(tmp1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18415), .COUT(n18416), .S0(n61[7]), .S1(n61[8]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_9.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_9.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_9.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_17 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18669), .COUT(n18670));
    defparam sub_970_add_2_17.INIT0 = 16'hffff;
    defparam sub_970_add_2_17.INIT1 = 16'hffff;
    defparam sub_970_add_2_17.INJECT1_0 = "NO";
    defparam sub_970_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_15 (.A0(tmp1[13]), .B0(DataOut_decimal[13]), .C0(GND_net), 
          .D0(GND_net), .A1(DataOut_decimal[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n18668), .COUT(n18669));
    defparam sub_970_add_2_15.INIT0 = 16'h5999;
    defparam sub_970_add_2_15.INIT1 = 16'hf555;
    defparam sub_970_add_2_15.INJECT1_0 = "NO";
    defparam sub_970_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_13 (.A0(tmp1[11]), .B0(DataOut_decimal[11]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[12]), .B1(DataOut_decimal[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18667), .COUT(n18668));
    defparam sub_970_add_2_13.INIT0 = 16'h5999;
    defparam sub_970_add_2_13.INIT1 = 16'h5999;
    defparam sub_970_add_2_13.INJECT1_0 = "NO";
    defparam sub_970_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_11 (.A0(tmp1[9]), .B0(DataOut_decimal[9]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[10]), .B1(DataOut_decimal[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18666), .COUT(n18667));
    defparam sub_970_add_2_11.INIT0 = 16'h5999;
    defparam sub_970_add_2_11.INIT1 = 16'h5999;
    defparam sub_970_add_2_11.INJECT1_0 = "NO";
    defparam sub_970_add_2_11.INJECT1_1 = "NO";
    CCU2D tmp1_1605_add_4_7 (.A0(tmp1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18414), .COUT(n18415), .S0(n61[5]), .S1(n61[6]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_7.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_9 (.A0(tmp1[7]), .B0(DataOut_decimal[7]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[8]), .B1(DataOut_decimal[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18665), .COUT(n18666));
    defparam sub_970_add_2_9.INIT0 = 16'h5999;
    defparam sub_970_add_2_9.INIT1 = 16'h5999;
    defparam sub_970_add_2_9.INJECT1_0 = "NO";
    defparam sub_970_add_2_9.INJECT1_1 = "NO";
    LUT4 i1926_2_lut (.A(d3_c[1]), .B(d3[0]), .Z(n1986[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1926_2_lut.init = 16'h6666;
    LUT4 i1897_2_lut (.A(d4[1]), .B(d4[0]), .Z(n1961[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1897_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(d2[3]), .B(d2[0]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(d4[0]), .B(d4[2]), .C(d4[1]), .Z(n6)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut.init = 16'h0202;
    LUT4 i2857_2_lut (.A(db[0]), .B(clk_c_enable_135), .Z(n15_adj_3497[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam i2857_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_71 (.A(da[3]), .B(clk_c_enable_237), .C(da[1]), 
         .D(n4), .Z(clk_c_enable_135)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/labcode6/impl1/source/toc.vhd(116[6] 152[10])
    defparam i1_4_lut_adj_71.init = 16'hcecc;
    LUT4 i1_2_lut_adj_72 (.A(da[0]), .B(da[2]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/labcode6/impl1/source/toc.vhd(116[6] 152[10])
    defparam i1_2_lut_adj_72.init = 16'h2222;
    LUT4 i265_2_lut (.A(n14_adj_3483), .B(clk_c_enable_237), .Z(n2139)) /* synthesis lut_function=((B)+!A) */ ;   // c:/labcode6/impl1/source/toc.vhd(116[6] 152[10])
    defparam i265_2_lut.init = 16'hdddd;
    LUT4 i1904_2_lut_3_lut (.A(d4[1]), .B(d4[0]), .C(d4[2]), .Z(n1961[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1904_2_lut_3_lut.init = 16'h7878;
    LUT4 i1911_3_lut_4_lut (.A(d4[1]), .B(d4[0]), .C(d4[2]), .D(d4[3]), 
         .Z(n1961[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1911_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6863_1_lut (.A(da[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6863_1_lut.init = 16'h5555;
    LUT4 i1933_2_lut_3_lut (.A(d3_c[1]), .B(d3[0]), .C(d3_c[2]), .Z(n1986[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1933_2_lut_3_lut.init = 16'h7878;
    LUT4 i1868_2_lut (.A(db[1]), .B(db[0]), .Z(n954[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1868_2_lut.init = 16'h6666;
    LUT4 i1940_3_lut_4_lut (.A(d3_c[1]), .B(d3[0]), .C(d3_c[2]), .D(d3_c[3]), 
         .Z(n1986[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1940_3_lut_4_lut.init = 16'h7f80;
    CCU2D sub_970_add_2_7 (.A0(tmp1[5]), .B0(DataOut_decimal[5]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[6]), .B1(DataOut_decimal[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18664), .COUT(n18665));
    defparam sub_970_add_2_7.INIT0 = 16'h5999;
    defparam sub_970_add_2_7.INIT1 = 16'h5999;
    defparam sub_970_add_2_7.INJECT1_0 = "NO";
    defparam sub_970_add_2_7.INJECT1_1 = "NO";
    LUT4 i6850_3_lut_4_lut (.A(d1[1]), .B(d1[0]), .C(d1[2]), .D(d1[3]), 
         .Z(n21_adj_3498[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6850_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6865_2_lut (.A(da[1]), .B(da[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6865_2_lut.init = 16'h6666;
    LUT4 i6843_2_lut_3_lut (.A(d1[1]), .B(d1[0]), .C(d1[2]), .Z(n21_adj_3498[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6843_2_lut_3_lut.init = 16'h7878;
    LUT4 i267_4_lut (.A(n14_adj_3483), .B(clk_c_enable_237), .C(n6_adj_3487), 
         .D(db[1]), .Z(n2141)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/labcode6/impl1/source/toc.vhd(116[6] 152[10])
    defparam i267_4_lut.init = 16'hcccd;
    CCU2D sub_970_add_2_5 (.A0(tmp1[3]), .B0(DataOut_decimal[3]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[4]), .B1(DataOut_decimal[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18663), .COUT(n18664));
    defparam sub_970_add_2_5.INIT0 = 16'h5999;
    defparam sub_970_add_2_5.INIT1 = 16'h5999;
    defparam sub_970_add_2_5.INJECT1_0 = "NO";
    defparam sub_970_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_3 (.A0(tmp1[1]), .B0(DataOut_decimal[1]), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[2]), .B1(DataOut_decimal[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18662), .COUT(n18663));
    defparam sub_970_add_2_3.INIT0 = 16'h5999;
    defparam sub_970_add_2_3.INIT1 = 16'h5999;
    defparam sub_970_add_2_3.INJECT1_0 = "NO";
    defparam sub_970_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_970_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp1[0]), .B1(DataOut_decimal[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n18662));
    defparam sub_970_add_2_1.INIT0 = 16'h0000;
    defparam sub_970_add_2_1.INIT1 = 16'h5999;
    defparam sub_970_add_2_1.INJECT1_0 = "NO";
    defparam sub_970_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_73 (.A(db[2]), .B(db[0]), .C(db[3]), .Z(n6_adj_3487)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i2_3_lut_adj_73.init = 16'hbfbf;
    LUT4 i1962_2_lut_3_lut (.A(d2[1]), .B(d2[0]), .C(d2[2]), .Z(n2009[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1962_2_lut_3_lut.init = 16'h7878;
    CCU2D tmp1_1605_add_4_5 (.A0(tmp1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18413), .COUT(n18414), .S0(n61[3]), .S1(n61[4]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_5.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_5.INJECT1_1 = "NO";
    LUT4 i1969_3_lut_4_lut (.A(d2[1]), .B(d2[0]), .C(d2[2]), .D(d2[3]), 
         .Z(n2009[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1969_3_lut_4_lut.init = 16'h7f80;
    CCU2D tmp1_1605_add_4_3 (.A0(tmp1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n18412), .COUT(n18413), .S0(n61[1]), .S1(n61[2]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp1_1605_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp1_1605_add_4_3.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_3.INJECT1_1 = "NO";
    CCU2D tmp1_1605_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n18412), .S1(n61[0]));   // c:/labcode6/impl1/source/toc.vhd(188[11:15])
    defparam tmp1_1605_add_4_1.INIT0 = 16'hF000;
    defparam tmp1_1605_add_4_1.INIT1 = 16'h0555;
    defparam tmp1_1605_add_4_1.INJECT1_0 = "NO";
    defparam tmp1_1605_add_4_1.INJECT1_1 = "NO";
    FD1P3AX No_Name__i2 (.D(db1), .SP(clk_c_enable_237), .CK(clk_c), .Q(\tempC[4][1] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name__i2.GSR = "DISABLED";
    FD1P3AX No_Name__i3 (.D(db2), .SP(clk_c_enable_237), .CK(clk_c), .Q(\tempC[4][2] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name__i3.GSR = "DISABLED";
    FD1P3AX No_Name__i4 (.D(db3), .SP(clk_c_enable_237), .CK(clk_c), .Q(\tempC[4][3] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name__i4.GSR = "DISABLED";
    FD1S3AX Data41_ret14_i2 (.D(Data51[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[1]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data41_ret14_i2.GSR = "DISABLED";
    FD1S3AX Data41_ret14_i3 (.D(Data61[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[2]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data41_ret14_i3.GSR = "DISABLED";
    FD1S3AX Data101_ret13_i2 (.D(Data81[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[4]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data101_ret13_i2.GSR = "DISABLED";
    FD1S3AX Data101_ret13_i3 (.D(Data91[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[5]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data101_ret13_i3.GSR = "DISABLED";
    FD1S3AX Data101_ret13_i4 (.D(Data101[0]), .CK(clk_c), .Q(DataOut_integer_31__N_415[6]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data101_ret13_i4.GSR = "DISABLED";
    FD1S3AX Data21_ret9_i3 (.D(Data21[0]), .CK(clk_c), .Q(DataOut_decimal_31__N_447[2]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data21_ret9_i3.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i1 (.D(Data11[0]), .CK(clk_c), .Q(DataOut_decimal_31__N_447[1]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i1.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i4 (.D(DataOut_decimal_31__N_1207[9]), .CK(clk_c), 
            .Q(DataOut_decimal_31__N_447[4]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i4.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i5 (.D(n8729[5]), .CK(clk_c), .Q(DataOut_decimal_31__N_447[5]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i5.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i6 (.D(n8729[6]), .CK(clk_c), .Q(n2_adj_3503[6]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i6.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i7 (.D(n8729[7]), .CK(clk_c), .Q(n2_adj_3503[7]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i7.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i8 (.D(n8729[8]), .CK(clk_c), .Q(n2_adj_3503[8]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i8.GSR = "DISABLED";
    FD1S3AX Data01_ret8_i11 (.D(n8741), .CK(clk_c), .Q(n2_adj_3503[11]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data01_ret8_i11.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i7 (.D(\tempC[4][0] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n50));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i7.GSR = "DISABLED";
    LUT4 i294_4_lut (.A(d4[3]), .B(clk_c_enable_272), .C(n6), .D(n1959), 
         .Z(n2168)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/labcode6/impl1/source/toc.vhd(164[6] 239[10])
    defparam i294_4_lut.init = 16'heccc;
    FD1P3AX DataOut_4__ret7__i8 (.D(\tempC[4][1] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n49));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i8.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i9 (.D(n9476[0]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n48));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i9.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i10 (.D(n9476[1]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n47));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i10.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i11 (.D(n9476[2]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n46));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i11.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i12 (.D(n9476[3]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n45));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i12.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i13 (.D(n9476[4]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n44));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i13.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i14 (.D(n9476[5]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n43));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i14.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i15 (.D(n9476[6]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n42));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i15.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i16 (.D(n9476[7]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n41));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i16.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i17 (.D(n9476[8]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n40));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i17.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i18 (.D(n9476[9]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n39));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i18.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i19 (.D(n9476[10]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n38));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i19.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i20 (.D(n9476[11]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n37));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i20.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i21 (.D(n9476[12]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n36));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i21.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i22 (.D(n9476[13]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n35));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i22.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i23 (.D(n9476[14]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n34));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i23.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i24 (.D(n9476[15]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n33));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i24.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i25 (.D(n9476[16]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n32));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i25.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i26 (.D(n9476[17]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n31));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i26.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i27 (.D(n9476[18]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n30));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i27.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i28 (.D(n9476[19]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n29));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i28.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i29 (.D(n9476[20]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n28));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i29.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i30 (.D(n9476[21]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n27));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i30.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i31 (.D(n9476[22]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n26));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i31.GSR = "DISABLED";
    FD1P3AX DataOut_4__ret7__i32 (.D(n9476[23]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n25));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__ret7__i32.GSR = "DISABLED";
    FD1P3AX DataOut_4__rep_5__i1 (.D(\tempC[4][1] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n9[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__rep_5__i1.GSR = "DISABLED";
    FD1P3AX DataOut_4__rep_5__i2 (.D(\tempC[4][2] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n9[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__rep_5__i2.GSR = "DISABLED";
    FD1P3AX DataOut_4__rep_5__i3 (.D(\tempC[4][3] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n9[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_4__rep_5__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2703__i2 (.D(d41), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[2][1] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2703__i2.GSR = "DISABLED";
    FD1P3AX No_Name_2703__i3 (.D(d42), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[2][2] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2703__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2703__i4 (.D(d43), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[2][3] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2703__i4.GSR = "DISABLED";
    FD1S3AX Data31_ret6_i4 (.D(Data31[0]), .CK(clk_c), .Q(DataOut_decimal_31__N_447[3]));   // c:/labcode6/impl1/source/toc.vhd(80[4] 108[12])
    defparam Data31_ret6_i4.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i5 (.D(\tempC[2][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n189));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i5.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(d3[0]), .B(d3_c[1]), .C(d3_c[2]), .D(n6_adj_3495), 
         .Z(n1959)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0200;
    FD1P3AX DataOut_2__ret5__i6 (.D(\tempC[2][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n188));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i6.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i7 (.D(n12950[0]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n187));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i7.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i8 (.D(n12950[1]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n186));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i8.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i9 (.D(n12950[2]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n185));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i9.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i10 (.D(n12950[3]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n184));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i10.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i11 (.D(n12950[4]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n183));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i11.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i12 (.D(n12950[5]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n182));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i12.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i13 (.D(n12950[6]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n181));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i13.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i14 (.D(n12950[7]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n180));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i14.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i15 (.D(n12950[8]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n179));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i15.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i16 (.D(n12950[9]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n178));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i16.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i17 (.D(n12950[10]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n177));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i17.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i18 (.D(n12950[11]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n176));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i18.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i19 (.D(n12950[12]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n175));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i19.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i20 (.D(n12950[13]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n174));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i20.GSR = "DISABLED";
    FD1P3AX DataOut_2__ret5__i21 (.D(n12965), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n173));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__ret5__i21.GSR = "DISABLED";
    FD1P3AX DataOut_2__rep_4__i1 (.D(\tempC[2][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_1[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__rep_4__i1.GSR = "DISABLED";
    FD1P3AX DataOut_2__rep_4__i2 (.D(\tempC[2][2] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_1[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__rep_4__i2.GSR = "DISABLED";
    FD1P3AX DataOut_2__rep_4__i3 (.D(\tempC[2][3] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_1[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_2__rep_4__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2702__i2 (.D(da1), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(\tempC[3][1] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2702__i2.GSR = "DISABLED";
    FD1P3AX No_Name_2702__i3 (.D(da2), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(\tempC[3][2] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2702__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2702__i4 (.D(da3), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(\tempC[3][3] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2702__i4.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i6 (.D(\tempC[3][0] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n103));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i6.GSR = "DISABLED";
    CCU2D add_3252_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18439), 
          .S0(DataOut_decimal_31__N_447[14]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3252_cout.INIT0 = 16'h0000;
    defparam add_3252_cout.INIT1 = 16'h0000;
    defparam add_3252_cout.INJECT1_0 = "NO";
    defparam add_3252_cout.INJECT1_1 = "NO";
    FD1P3AX DataOut_3__ret3__i7 (.D(\tempC[3][1] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n102));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i7.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i8 (.D(\tempC[3][2] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n101));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i8.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i9 (.D(n13913[0]), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n100));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i9.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i10 (.D(n13913[1]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n99));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i10.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i11 (.D(n13913[2]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n98));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i11.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i12 (.D(n13913[3]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n97));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i12.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i13 (.D(n13913[4]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n96));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i13.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i14 (.D(n13913[5]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n95));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i14.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i15 (.D(n13913[6]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n94));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i15.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i16 (.D(n13913[7]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n93));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i16.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i17 (.D(n13913[8]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n92));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i17.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i18 (.D(n13913[9]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n91));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i18.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i19 (.D(n13913[10]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n90));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i19.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i20 (.D(n13913[11]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n89));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i20.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i21 (.D(n13913[12]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n88));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i21.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i22 (.D(n13913[13]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n87));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i22.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i23 (.D(n13913[14]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n86));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i23.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i24 (.D(n13913[15]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n85));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i24.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i25 (.D(n13913[16]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n84));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i25.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i26 (.D(n13913[17]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n83));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i26.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i27 (.D(n13913[18]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n82));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i27.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i28 (.D(n13913[19]), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n81));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i28.GSR = "DISABLED";
    FD1P3AX DataOut_3__ret3__i29 (.D(n13934), .SP(clk_c_enable_237), .CK(clk_c), 
            .Q(n80));   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__ret3__i29.GSR = "DISABLED";
    FD1P3AX DataOut_3__rep_3__i1 (.D(\tempC[3][1] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n6410)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__rep_3__i1.GSR = "DISABLED";
    FD1P3AX DataOut_3__rep_3__i2 (.D(\tempC[3][2] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n6409)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__rep_3__i2.GSR = "DISABLED";
    FD1P3AX DataOut_3__rep_3__i3 (.D(\tempC[3][3] ), .SP(clk_c_enable_237), 
            .CK(clk_c), .Q(n6408)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(115[5] 153[9])
    defparam DataOut_3__rep_3__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2701__i2 (.D(d21), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[0][1] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2701__i2.GSR = "DISABLED";
    FD1P3AX No_Name_2701__i3 (.D(d22), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[0][2] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2701__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2701__i4 (.D(d23), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[0][3] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2701__i4.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i3 (.D(\tempC[0][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(\Fahrenheit[2] ));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i3.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i4 (.D(\tempC[0][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n349));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i4.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i5 (.D(n12445[0]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n348));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i5.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i6 (.D(n12445[1]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n347));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i6.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i7 (.D(n12445[2]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n346));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i7.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i8 (.D(n12445[3]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n345));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i8.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i9 (.D(n12445[4]), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n344));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i9.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i10 (.D(n12445[5]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n343));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i10.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i11 (.D(n12445[6]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n342));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i11.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i12 (.D(n12445[7]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n341));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i12.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i13 (.D(n12445[8]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n340));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i13.GSR = "DISABLED";
    FD1P3AX DataOut_0__ret1__i14 (.D(n12455), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n339));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__ret1__i14.GSR = "DISABLED";
    FD1P3AX DataOut_0__rep_2__i1 (.D(\tempC[0][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_2[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__rep_2__i1.GSR = "DISABLED";
    CCU2D add_3252_8 (.A0(n14466[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14473), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18438), 
          .COUT(n18439), .S0(DataOut_decimal_31__N_447[12]), .S1(DataOut_decimal_31__N_447[13]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3252_8.INIT0 = 16'h5aaa;
    defparam add_3252_8.INIT1 = 16'h5aaa;
    defparam add_3252_8.INJECT1_0 = "NO";
    defparam add_3252_8.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_74 (.A(n19748), .B(d3_c[3]), .Z(n6_adj_3495)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_74.init = 16'h4444;
    FD1P3AX DataOut_0__rep_2__i2 (.D(\tempC[0][2] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_2[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__rep_2__i2.GSR = "DISABLED";
    FD1P3AX DataOut_0__rep_2__i3 (.D(\tempC[0][3] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_2[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_0__rep_2__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2700__i2 (.D(d31), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[1][1] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2700__i2.GSR = "DISABLED";
    FD1P3AX No_Name_2700__i3 (.D(d32), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[1][2] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2700__i3.GSR = "DISABLED";
    FD1P3AX No_Name_2700__i4 (.D(d33), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(\tempC[1][3] ));   // c:/labcode6/impl1/source/top.vhd(131[5:8])
    defparam No_Name_2700__i4.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i4 (.D(\tempC[1][0] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n271));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i4.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i5 (.D(\tempC[1][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n270));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i5.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i6 (.D(\tempC[1][2] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n269));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i6.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i7 (.D(\tempC[1][3] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n268));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i7.GSR = "DISABLED";
    CCU2D add_3252_6 (.A0(n14466[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14466[4]), .B1(DataOut_decimal_31__N_447[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n18437), .COUT(n18438), .S0(DataOut_decimal_31__N_447[10]), 
          .S1(DataOut_decimal_31__N_447[11]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3252_6.INIT0 = 16'h5aaa;
    defparam add_3252_6.INIT1 = 16'h5666;
    defparam add_3252_6.INJECT1_0 = "NO";
    defparam add_3252_6.INJECT1_1 = "NO";
    FD1P3AX DataOut_1__ret0__i10 (.D(n11764[0]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n265));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i10.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i11 (.D(n11764[1]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n264));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i11.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i12 (.D(n11764[2]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n263));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i12.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i13 (.D(n11764[3]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n262));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i13.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i14 (.D(n11764[4]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n261));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i14.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i15 (.D(n11764[5]), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n260));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i15.GSR = "DISABLED";
    FD1P3AX DataOut_1__ret0__i16 (.D(n11771), .SP(clk_c_enable_272), .CK(clk_c), 
            .Q(n259));   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__ret0__i16.GSR = "DISABLED";
    FD1P3AX DataOut_1__rep_1__i1 (.D(\tempC[1][1] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_3[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__rep_1__i1.GSR = "DISABLED";
    FD1S3IX tmp_1603__i0 (.D(n2[0]), .CK(clk_c), .CD(n2141), .Q(tmp[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603__i0.GSR = "DISABLED";
    FD1P3AX DataOut_1__rep_1__i2 (.D(\tempC[1][2] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_3[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__rep_1__i2.GSR = "DISABLED";
    FD1P3AX DataOut_1__rep_1__i3 (.D(\tempC[1][3] ), .SP(clk_c_enable_272), 
            .CK(clk_c), .Q(n9_adj_3[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam DataOut_1__rep_1__i3.GSR = "DISABLED";
    FD1P3IX d2__i1 (.D(n2009[1]), .SP(clk_c_enable_275), .CD(n5096), .CK(clk_c), 
            .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d2__i1.GSR = "DISABLED";
    FD1P3IX d2__i2 (.D(n2009[2]), .SP(clk_c_enable_275), .CD(n5096), .CK(clk_c), 
            .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d2__i2.GSR = "DISABLED";
    FD1P3IX d2__i3 (.D(n2009[3]), .SP(clk_c_enable_275), .CD(n5096), .CK(clk_c), 
            .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=5, LSE_RCOL=8, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/labcode6/impl1/source/toc.vhd(163[5] 240[9])
    defparam d2__i3.GSR = "DISABLED";
    CCU2D add_3252_4 (.A0(n14466[1]), .B0(DataOut_decimal_31__N_447[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n14466[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18436), .COUT(n18437), .S0(DataOut_decimal_31__N_447[8]), 
          .S1(DataOut_decimal_31__N_447[9]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3252_4.INIT0 = 16'h5666;
    defparam add_3252_4.INIT1 = 16'h5aaa;
    defparam add_3252_4.INJECT1_0 = "NO";
    defparam add_3252_4.INJECT1_1 = "NO";
    CCU2D add_3252_2 (.A0(n2_adj_3503[6]), .B0(DataOut_decimal_31__N_447[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n14466[0]), .B1(DataOut_decimal_31__N_447[2]), 
          .C1(GND_net), .D1(GND_net), .COUT(n18436), .S1(DataOut_decimal_31__N_447[7]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3252_2.INIT0 = 16'h7000;
    defparam add_3252_2.INIT1 = 16'h5666;
    defparam add_3252_2.INJECT1_0 = "NO";
    defparam add_3252_2.INJECT1_1 = "NO";
    CCU2D tmp_1603_add_4_7 (.A0(tmp[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18390), 
          .S0(n2[5]), .S1(n2[6]));   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp_1603_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp_1603_add_4_7.INJECT1_0 = "NO";
    defparam tmp_1603_add_4_7.INJECT1_1 = "NO";
    CCU2D tmp_1603_add_4_5 (.A0(tmp[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18389), 
          .COUT(n18390), .S0(n2[3]), .S1(n2[4]));   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp_1603_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp_1603_add_4_5.INJECT1_0 = "NO";
    defparam tmp_1603_add_4_5.INJECT1_1 = "NO";
    CCU2D tmp_1603_add_4_3 (.A0(tmp[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18388), 
          .COUT(n18389), .S0(n2[1]), .S1(n2[2]));   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp_1603_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp_1603_add_4_3.INJECT1_0 = "NO";
    defparam tmp_1603_add_4_3.INJECT1_1 = "NO";
    CCU2D add_3251_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18757), 
          .S0(n14473));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3251_cout.INIT0 = 16'h0000;
    defparam add_3251_cout.INIT1 = 16'h0000;
    defparam add_3251_cout.INJECT1_0 = "NO";
    defparam add_3251_cout.INJECT1_1 = "NO";
    CCU2D add_3251_6 (.A0(n2_adj_3503[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(DataOut_decimal_31__N_447[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n18756), .COUT(n18757), .S0(n14466[4]), 
          .S1(n14466[5]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3251_6.INIT0 = 16'h5aaa;
    defparam add_3251_6.INIT1 = 16'hfaaa;
    defparam add_3251_6.INJECT1_0 = "NO";
    defparam add_3251_6.INJECT1_1 = "NO";
    CCU2D add_3251_4 (.A0(DataOut_decimal_31__N_447[4]), .B0(DataOut_decimal_31__N_447[3]), 
          .C0(GND_net), .D0(GND_net), .A1(DataOut_decimal_31__N_447[1]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n18755), .COUT(n18756), 
          .S0(n14466[2]), .S1(n14466[3]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3251_4.INIT0 = 16'h5666;
    defparam add_3251_4.INIT1 = 16'h5aaa;
    defparam add_3251_4.INJECT1_0 = "NO";
    defparam add_3251_4.INJECT1_1 = "NO";
    CCU2D add_3251_2 (.A0(n2_adj_3503[7]), .B0(DataOut_decimal_31__N_447[3]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_3503[8]), .B1(DataOut_decimal_31__N_447[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n18755), .S1(n14466[1]));   // c:/labcode6/impl1/source/toc.vhd(107[20:55])
    defparam add_3251_2.INIT0 = 16'h7000;
    defparam add_3251_2.INIT1 = 16'h5666;
    defparam add_3251_2.INJECT1_0 = "NO";
    defparam add_3251_2.INJECT1_1 = "NO";
    CCU2D tmp_1603_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tmp[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n18388), .S1(n2[0]));   // c:/labcode6/impl1/source/toc.vhd(126[14:17])
    defparam tmp_1603_add_4_1.INIT0 = 16'hF000;
    defparam tmp_1603_add_4_1.INIT1 = 16'h0555;
    defparam tmp_1603_add_4_1.INJECT1_0 = "NO";
    defparam tmp_1603_add_4_1.INJECT1_1 = "NO";
    
endmodule
