# Zybo Z7-10 learning projects

My step-by-step projects for learning the Digilent **Zybo Z7-10** (Zynq XC7Z010, dual-core ARM Cortex-A9 + FPGA).

**Tools:** AMD Vivado + Vitis 2025.2 on Windows
**Board:** Zybo Z7-10 Rev. B, serial console 115200 baud

## Projects

| Stage | Project | Folder | Status |
|---|---|---|---|
| 2 | Hello World on the ARM (bare-metal) | `hello_word/` (Vivado), `vitis_ws/` (Vitis) | Done |
| 1 | Buttons → LEDs | `btn_led/` | Next |

## Rebuilding

- **Vivado:** open the `.xpr` file, then *Generate Block Design* / *Generate Bitstream*.
- **Vitis:** open `vitis_ws` as the workspace, build the platform, then the app.

Build outputs (`.runs`, `.cache`, Vitis `build/` folders, etc.) are not committed; see `.gitignore`.
Keep projects in short paths such as `C:\zybo` to avoid the Windows 260-character path limit.
