* Generic CMOS transistor-level logic cells (portable Level-1 model deck)
* Pin order: A/B/... followed by output, VDD, VSS as documented per cell.

.model NM NMOS level=1 VTO=0.45 KP=120u GAMMA=0.4 PHI=0.7 LAMBDA=0.04
.model PM PMOS level=1 VTO=-0.45 KP=50u GAMMA=0.4 PHI=0.7 LAMBDA=0.04

.subckt INV A Y VDD VSS
MP1 Y A VDD VDD PM W=2u L=0.18u
MN1 Y A VSS VSS NM W=1u L=0.18u
.ends INV

.subckt NAND2 A B Y VDD VSS
MP1 Y A VDD VDD PM W=2u L=0.18u
MP2 Y B VDD VDD PM W=2u L=0.18u
MN1 Y A N1 VSS NM W=1u L=0.18u
MN2 N1 B VSS VSS NM W=1u L=0.18u
.ends NAND2

* XOR = (A NAND nB) NAND (nA NAND B)
.subckt XOR2 A B Y VDD VSS
XIA A nA VDD VSS INV
XIB B nB VDD VSS INV
X1 A nB t1 VDD VSS NAND2
X2 nA B t2 VDD VSS NAND2
X3 t1 t2 Y VDD VSS NAND2
.ends XOR2

.subckt FULLADDER A B CIN SUM COUT VDD VSS
XX1 A B X VDD VSS XOR2
XX2 X CIN SUM VDD VSS XOR2
* Carry = AB + CIN*(A xor B), implemented as NAND network
XN1 A B nAB VDD VSS NAND2
XN2 X CIN nXC VDD VSS NAND2
XN3 nAB nXC COUT VDD VSS NAND2
.ends FULLADDER
