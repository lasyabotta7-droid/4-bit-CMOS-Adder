# Verification checklist

1. Run `ngspice -b tb_adder4.sp` and inspect `adder4_waveforms.txt`.
2. Confirm each sampled output equals `A + B + CIN` (low four bits on S[3:0],
   fifth bit on COUT).
3. For Sky130 signoff, use the installed `sky130A` model cards and the
   matching device parameters, then create a physical layout in Magic.
4. Run Magic DRC and Netgen LVS against the extracted layout netlist.
5. Record actual tool versions, commands, logs, and screenshots in the report.

The generic model deck is for learning and functional checks only. It does not
substitute for PDK-corner simulation or physical verification.
