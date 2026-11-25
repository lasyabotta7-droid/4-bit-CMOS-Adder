# 4-bit CMOS Adder (Transistor-Level)

This project implements a 4-bit ripple-carry adder using CMOS transistor-level logic subcircuits. It includes an ngspice testbench and generic MOSFET models for functional simulation.

## Project Files

- `cmos_cells.sp` – CMOS inverter, NAND2, XOR2, and full-adder subcircuits.
- `adder4.sp` – Four full-adder stages connected as a ripple-carry adder.
- `tb_adder4.sp` – Testbench for simulation.
- `run_ngspice.sh` – Simulation helper script.
- `verification.md` – Verification instructions.

## Run Simulation

Install ngspice, open a terminal in the project folder, and run:

```bash
ngspice -b tb_adder4.sp
```

## Important Notes

The included MOSFET models are generic Level-1 models for functional simulation. They are not official Sky130 model cards.

The Sky130 physical layout, Magic DRC, and Netgen LVS have not yet been completed or verified. These steps are required for full Sky130 physical-design signoff.
