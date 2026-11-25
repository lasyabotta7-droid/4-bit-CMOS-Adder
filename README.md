# 4-bit CMOS Adder (transistor-level)

This project implements a 4-bit ripple-carry adder using CMOS transistor-level
logic subcircuits. It includes a standalone ngspice testbench and a generic
MOSFET model deck for functional simulation.

## Files
- `spice/cmos_cells.sp`: CMOS inverter, NAND2, XOR2, and full-adder cells.
- `spice/adder4.sp`: four full-adder stages connected as a ripple-carry adder.
- `spice/tb_adder4.sp`: transient testbench with changing A/B vectors.
- `scripts/run_ngspice.sh`: runs the testbench if ngspice is installed.
- `docs/verification.md`: what to check and how to proceed with Sky130.

## Run
```bash
cd spice
ngspice -b tb_adder4.sp
```
or
```bash
bash scripts/run_ngspice.sh
```

## Important
The included MOS models are generic Level-1 models for portable functional
simulation; they are not the official Sky130 model cards. The netlist is a
transistor-level reference implementation, not a claim that Magic layout,
DRC, or Netgen LVS have already passed. For a final Sky130 submission, replace
the generic model deck with the installed Sky130 model includes, create the
physical layout, and run DRC/LVS in the user's installed environment.
