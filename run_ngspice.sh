
#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Running 4-bit CMOS Adder simulation..."
ngspice -b tb_adder4.sp

echo "Simulation command completed."
