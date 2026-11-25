* 4-bit CMOS ripple-carry adder transient testbench
.include "adder4.sp"
VDD vdd 0 1.8
* Bit 0 is least significant bit.
VA0 a0 0 PULSE(0 1.8 0n 100p 100p 20n 40n)
VA1 a1 0 PULSE(0 1.8 0n 100p 100p 40n 80n)
VA2 a2 0 PULSE(0 1.8 0n 100p 100p 80n 160n)
VA3 a3 0 0
VB0 b0 0 PULSE(0 1.8 0n 100p 100p 10n 20n)
VB1 b1 0 PULSE(0 1.8 0n 100p 100p 20n 40n)
VB2 b2 0 0
VB3 b3 0 0
VCIN cin 0 0
XADD a0 a1 a2 a3 b0 b1 b2 b3 cin s0 s1 s2 s3 cout vdd 0 ADDER4
.control
tran 0.1n 160n
wrdata adder4_waveforms.txt v(a0) v(a1) v(a2) v(a3) v(b0) v(b1) v(s0) v(s1) v(s2) v(s3) v(cout)
.endc
.end
