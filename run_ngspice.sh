#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../spice"
command -v ngspice >/dev/null || { echo "ngspice is not installed"; exit 1; }
ngspice -b tb_adder4.sp
