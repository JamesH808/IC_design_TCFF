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
V1     VDD   0   DC=Vsupply
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
MM20 NET4 D GND GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM2 NET7 NET5 NET4 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.58e-14 AS=2.82e-14
+ PD=6.7e-07 PS=7.1e-07
MM3 GND CLK NET7 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.43e-14 AS=2.97e-14
+ PD=6.45e-07 PS=7.35e-07
MM0 NET5 NET4 GND GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM6 NET7 NET3 NET5 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.37e-14 AS=3.03e-14
+ PD=6.35e-07 PS=7.45e-07
MM4 NET3 NET5 GND GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM9 NET1 NET9 GND GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM10 NET1 NET5 NET8 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14
+ PD=6.4e-07 PS=7.4e-07
MM14 NET8 NET3 NET9 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14
+ PD=6.4e-07 PS=7.4e-07
MM15 GND CLK NET8 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM16 GND NET1 NET9 GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM18 Q NET1 GND GND NMOS_VTL L=5e-08 W=1.2e-07 AD=2.4e-14 AS=3e-14 PD=6.4e-07
+ PS=7.4e-07
MM19 NET4 D NET10 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM1 NET5 NET4 NET6 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM5 NET3 NET5 VDD VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM7 NET10 NET5 VDD VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM8 NET1 NET9 NET10 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM11 NET6 CLK NET10 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM12 NET6 NET1 NET9 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM13 VDD NET3 NET6 VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
MM17 Q NET1 VDD VDD PMOS_VTL L=5e-08 W=2.4e-07 AD=4.92e-14 AS=3.96e-14
+ PD=8.9e-07 PS=8.1e-07
c_10 NET10 0 0.282219f
c_22 NET5 0 0.539851f
c_28 NET7 0 0.144266f
c_41 CLK 0 0.590804f
c_50 NET6 0 0.238923f
c_61 NET3 0 0.349511f
c_71 NET9 0 0.327283f
c_78 NET8 0 0.123351f
c_89 NET1 0 0.518543f
c_94 D 0 0.112271f
c_103 NET4 0 0.239652f
c_114 GND 0 0.935402f
c_125 VDD 0 0.678164f
c_130 Q 0 0.0567091f
*
.include "horiz_tcff.pex.netlist.HORIZ_TCFF.pxi"



********************************************************************************
* Data Driver: PMOS - Two inverters, 1st uses VDD1, 2nd uses VDD (per Vojin '99)
********************************************************************************
MM2222  Dmid  Din   VDD1  VDD1  PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07
MM2223  D     Dmid  vdd   vdd   PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07

********************************************************************************
* Data Driver: NMOS
********************************************************************************
MM3333  Dmid  Din   0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07
MM3334  D     Dmid  0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07

********************************************************************************
* Clock Driver: PMOS
********************************************************************************
MM4444  CLKmid  CLKin  VDD1  VDD1  PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07
MM4445  CLK     CLKmid vdd   vdd   PMOS_VTL  L=5e-08 W=2.4e-07 AD=1.74e-14 AS=3.36e-14 PD=5.3e-07 PS=8.1e-07

********************************************************************************
* Clock Driver: NMOS
********************************************************************************
MM5555  CLKmid  CLKin  0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07
MM5556  CLK     CLKmid 0     0     NMOS_VTL  L=5e-08 W=1.2e-07 AD=1.74e-14 AS=1.89e-14 PD=5.3e-07 PS=5.55e-07

********************************************************************************
* FO4 Load: VDD2 is used
********************************************************************************
MM7771  Qload  Q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8881  Qload  Q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7772  Qload  Q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8882  Qload  Q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7773  Qload  Q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8883  Qload  Q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07
MM7774  Qload  Q  VDD2  VDD2  PMOS_VTL  L=5e-08 W=2.4e-07
MM8884  Qload  Q  0     0     NMOS_VTL  L=5e-08 W=1.2e-07

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
