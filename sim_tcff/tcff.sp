.TEMP 25.0
.OPTION
+    POST
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0

********************************************************************************
* Parameter Definitions
********************************************************************************
.param Vsupply=1V
.param Vtest="0.5*Vsupply"
.param VtestHigh="0.8*Vsupply"
.param cqValue=4.2e-11

********************************************************************************
* Power Supplies
********************************************************************************
V1     vdd   0   DC=Vsupply
Vvdd1  VDD1  0   DC=Vsupply
Vvdd2  VDD2  0   DC=Vsupply

********************************************************************************
* Input Sources (10% Switching Activity)
********************************************************************************
Vd         din     0  PULSE(0v Vsupply 2.2ns 0.001ns 0.001ns 9.99ns 20ns)
Vclk       clkin   0  PULSE(0v Vsupply 0ns   0.001ns 0.001ns 0.5ns  1ns)

********************************************************************************
* Main Logic Circuit (Core using d, clk, q)
********************************************************************************
m17 q net11 vdd vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m13 vdd net3 net5 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m12 net5 net11 net2 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m11 net5 clk net10 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m8 net11 net2 net10 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m7 net10 net8 vdd vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m4 net3 net8 vdd vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m0 net8 net7 net5 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m19 net7 d net10 vdd PMOS_VTL L=50e-9 W=240e-9 AD=25.2e-15 AS=25.2e-15 PD=450e-9 PS=450e-9 M=1
m15 net1 clk gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m18 q net11 gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m16 gnd net11 net2 gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m14 net1 net3 net2 gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m10 net11 net2 gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m9 net11 net8 net1 gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m6 net9 clk gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m5 net3 net8 gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m3 net9 net3 net8 gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m2 net9 net8 net7 gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m1 net8 net7 gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1
m20 net7 d gnd gnd NMOS_VTL L=50e-9 W=120e-9 AD=12.6e-15 AS=12.6e-15 PD=330e-9 PS=330e-9 M=1



********************************************************************************
* Data Driver: PMOS - Two inverters, 1st uses VDD1, 2nd uses VDD (per Vojin '99)
********************************************************************************
MM2222  Dmid  Din   VDD1  VDD1  PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07
MM2223  d     Dmid  vdd   vdd   PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07

********************************************************************************
* Data Driver: NMOS
********************************************************************************
MM3333  Dmid  Din   0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07
MM3334  d     Dmid  0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07

********************************************************************************
* Clock Driver: PMOS
********************************************************************************
MM4444  CLKmid  CLKin  VDD1  VDD1  PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07
MM4445  clk     CLKmid vdd   vdd   PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07

********************************************************************************
* Clock Driver: NMOS
********************************************************************************
MM5555  CLKmid  CLKin  0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07
MM5556  clk     CLKmid 0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07

********************************************************************************
* FO4 Load: VDD2 is used
********************************************************************************
MM7771  Qload  q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8881  Qload  q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7772  Qload  q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8882  Qload  q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7773  Qload  q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8883  Qload  q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7774  Qload  q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8884  Qload  q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07

********************************************************************************
* Include Model File
********************************************************************************
.PROTECT
.INCLUDE "/data/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"
.UNPROTECT

********************************************************************************
* Simulation
********************************************************************************
.TRAN 1e-12 200ns START=0.0
.MEAS TRAN pwr AVG p(V1) FROM=0.0001ns TO=200ns

********************************************************************************
* === CORNER VARIANTS ===
********************************************************************************
.ALTER
.PROTECT
.INCLUDE "/ICD/FreePDK45/ncsu_basekit/models/hspice/hspice_ff.include"
.UNPROTECT

.ALTER
.PROTECT
.INCLUDE "/ICD/FreePDK45/ncsu_basekit/models/hspice/hspice_sf.include"
.UNPROTECT

.ALTER
.PROTECT
.INCLUDE "/ICD/FreePDK45/ncsu_basekit/models/hspice/hspice_ss.include"
.UNPROTECT

.END

