# Design Description

This is part of a collection of SHA(Secure Hash Algorithm) cores. This core is non-pipelined version of SHA, and has simple interfaces with the host side. 

# Utilization Report
Synthesized on Artix-7 device using vivado.

### SHA1
|Resource| No.|
|:---:|:---:|
|LUT|942|
|FF|895|
|DSP|0|
|BRAM|0|
|IO|74|

# License
GNU Lesser General Public License

# Directory structure

    ├── doc           # Documnetation
    ├── rtl           # RTL Sources
    └── testbench     # Testbench