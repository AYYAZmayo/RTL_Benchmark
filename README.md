# RTL_Benchmark
This repository contains the benchmarks, catagorized on the bases of their domain.

## Directory structure
    ├── arithmetic
    │   ├── cf_fft_256_8
    │   ├── cordic_core
    │   ├── DCT
    │   ├── diffeq1
    │   ├── diffeq2
    │   ├── fpu
    │   ├── hardware_divider
    │   ├── LU8PEEng
    │   ├── pipelined_dct
    │   └── unsigned_mult_80
    ├── controller
    │   ├── ac97
    │   ├── ata
    │   ├── ch_intrinsic
    │   ├── ethernet_mac
    │   ├── i2c_master
    │   ├── mem_ctl
    │   ├── sasc
    │   ├── sdc_controller
    │   ├── simple_pic
    │   ├── steppermotordrive
    │   ├── usb1.1_phy
    │   ├── usb2.0
    │   └── vga_lcd
    ├── core
    │   ├── oc54x
    │   ├── rs_decoder
    │   └── tv80s
    ├── digital_design
    │   ├── bin2bcd
    │   ├── cavlc
    │   ├── counter
    │   ├── counter120bitx5
    │   ├── counter_16bit
    │   ├── shift_reg_8192
    │   └── simon_bit_serial
    ├── encryption
    │   ├── des
    │   ├── sha1
    │   ├── sha256
    │   └── systemCdes
    ├── finance
    │   └── bgm
    ├── interface
    │   ├── simple_gpio
    │   ├── simple_spi
    │   ├── spi
    │   ├── ss_pcm
    │   ├── wb_conmax
    │   ├── wb_dma
    │   └── wbif_68k
    ├── memory_core
    │   ├── generic_fifo_dc
    │   ├── generic_fifo_dc_gray
    │   ├── generic_fifo_lfsr
    │   ├── generic_fifo_sc_a
    │   ├── generic_fifo_sc_b
    │   └── ssram
    └── signal_processing
        ├── blob_merge
        ├── iir
        ├── jpeg_qnr
        ├── stereovision3
        └── stereovission1

## Synthesis report of each catagory on different tools:
### 1. Arithmetic
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|110 (unsign_mult)|0 (unsign_mult)|0 (cf_fft)|0 (fpu)|24 (DCT)|
|Max|15136 (LU8PEEng)|4345 (LU8PEEng)|64 (DCT)|30.5 (DCT)|258 (diffeq1)|
|Avg|2394.5|1021.3|9.91|5.4|113|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|48 (unsign_mult)|0 (unsign_mult)|0 (cordic_core)|0 (fpu)|25 (DCT)|
|Max|19230 (LU8PEEng)|10669 (LU8PEEng)|64 (DCT)|38 (LU8PEEng)|258 (diffeq1)|
|Avg|2933.3|2032.1|11.4|3.4|113.1|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|160 (unsign_mult)|0 (unsign_mult)|0 (cordic_core)|0 (fpu)|25 (DCT)|
|Max|35221 (LU8PEEng)|13942 (LU8PEEng)|48 (LU8PEEng)|33 (LU8PEEng)|258 (diffeq1)|
|Avg|5351|2233.1|13.9|4.2|135.4|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|53 (unsign_mult)|0 (unsign_mult)|0 (cordic_core)|0 (fpu)|25 (DCT)|
|Max|12537 (LU8PEEng)|6276 (LU8PEEng)|124 (DCT)|49 (LU8PEEng)|258 (diffeq1)|
|Avg|2728.5|1657.6|18.7|4.4|113.1|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|40 (unsign_mult)|0 (unsign_mult)|0 (cordic_core)|0 (unsign_mult)|25 (DCT)|
|Max|21484 (LU8PEEng)|4680 (LU8PEEng)|30 (cf_fft)|56 (LU8PEEng)|258 (diffeq1)|
|Avg|3239.4|1325.3|6|6.7|123.2|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|195 (unsign_mult)|0 (unsign_mult)|0 (hardware_divider)|0 (unsign_mult)|24 (DCT)|
|Max|28730 (LU8PEEng)|12239 (LU8PEEng)|64 (DCT)|132 (LU8PEEng)|258 (diffeq1)|
|Avg|5429.2|2533.1|14.6|16.5|136.8|


### 3. Core
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|570 (rs_dec)|230 (tv80s)|0 (tv80s)|0|20 (rs_dec)|
|Max|2338 (oc54x)|432 (oc54x)|1 (oc54x)|0|140 (oc54x)|
|Avg|1351.6|352.3|0.33|0|68.6|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|350 (rs_dec)|426 (tv80s)|0 (tv80s)|0|20 (rs_dec)|
|Max|1915 (oc54x)|592 (rs_dec)|13 (rs_dec)|0|140 (oc54x)|
|Avg|1212|491.3|4.7|0|68.6|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|883 (rs_dec)|362 (tv80s)|0 (tv80s)|0 (rs_dec)|20 (rs_dec)|
|Max|3044 (oc54x)|517 (rs_dec)|13 (rs_dec)|3 (tv80s)|140 (oc54x)|
|Avg|2059.7|436|4.7|1|68.6|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|414 (rs_dec)|266 (tv80s)|0 (tv80s)|0|20 (rs_dec)|
|Max|2038 (oc54x)|535 (rs_dec)|13 (rs_dec)|0|140 (oc54x)|
|Avg|1142.7|413.3|4.7|0|68.6|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|678 (rs_dec)|230 (tv80s)|0 (tv80s)|0|20 (rs_dec)|
|Max|3039 (oc54x)|517 (rs_dec)|13 (rs_dec)|0|140 (oc54x)|
|Avg|1739|390.3|4.7|0|68.6|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|962 (rs_dec)|361 (tv80s)|0 (tv80s)|0|20 (rs_dec)|
|Max|2530 (oc54x)|517 (rs_dec)|13 (rs_dec)|0|140 (oc54x)|
|Avg|1734|434.7|4.7|0|68.7|

### 4. Digital Design
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|1 (counter)|0 (bin2dec)|0 |0|3 (shift_reg)|
|Max|702 (cavlc)|605 (counter120bitx5)|0|0|187 (cavlc)|
|Avg|145.7|150.6|0|0|45.7|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|9 (counter)|0 (bin2dec)|0 |0 (counter)|3 (shift_reg)|
|Max|811 (cavlc)|605 (counter120bitx5)|0|2 (sb_serial)|187 (cavlc)|
|Avg|224.6|178|0|0.28|45.7|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|0 (counter)|0 (bin2dec)|0 |0 (counter)|3 (shift_reg)|
|Max|1590 (cavlc)|605 (counter120bitx5)|0|1 (shift_reg)|187 (cavlc)|
|Avg|362.1|156|0|0.14|45.7|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|0 (counter_16bit)|0 (bin2dec)|0 |0|3 (shift_reg)|
|Max|949 (cavlc)|8192 (shift_reg)|0|0|187 (cavlc)|
|Avg|228.7|1395.3|0|0|45.7|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|7 (counter_16bit)|0 (bin2dec)|0 |0 (counter)|3 (shift_reg)|
|Max|1086 (cavlc)|605 (counter120bitx5)|0|1 (shift_reg)|187 (cavlc)|
|Avg|279.1|156|0|0.14|45.7|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|0 (shift_reg)|0 (bin2dec)|0|0|3 (shift_reg)|
|Max|1445 (cavlc)|8192 (shift_reg)|0|0|187 (cavlc)|
|Avg|387.3|1355.7|0|0|45.7|

### 5. Encryption
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|309 (systemCdes)|64 (des_area)|0 |0 (des_area)|30 (sha256)|
|Max|5512 (des_prf)|6008 (des_prf)|0|0.5 (sha256)|298 (des_prf)|
|Avg|1588.4|1568|0|0.1|134|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|248 (systemCdes)|64 (des_area)|0|0 (des_area)|30 (sha256)|
|Max|5410 (des_prf)|6604 (des_prf)|0|4 (des_prf)|298 (des_prf)|
|Avg|2550|1729.6|0|0.8|134.8|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|544 (systemCdes)|64 (des_area)|0|0 (des_area)|30 (sha256)|
|Max|10326 (des_prf)|7022 (des_prf)|0|1 (sha256)|298 (des_prf)|
|Avg|2821|1727.8|0|0.2|156.2|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|328 (systemCdes)|64 (des_area)|0|0|30 (sha256)|
|Max|3828 (des_prf)|8808 (des_prf)|0|0|298 (des_prf)|
|Avg|1466.4|2103.4|0|0|157.8|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|748 (des_area)|64 (des_area)|0 |0 (des_area)|30 (sha256)|
|Max|1456 (sha256)|893 (sha1)|0|1 (sha256)|298 (des_prf)|
|Avg|1095|456.8|0|0.25|94|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|418 (systemCdes)|64 (des_area)|0|0|30 (sha256)|
|Max|5743 (des_prf)|7637 (des_prf)|0|0|298 (des_prf)|
|Avg|1937.2|1859.4|0|0|156.2|

### 6. Finance
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|10243|5404|22|0|289|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|14679|4297|4|11|290|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|20630|3990|44|0|289|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|11956|5811|22|0|290|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|-|-|-|-|-|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|bgm|25769|5132|11|0|289|


### 8. Memory core
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|19 (generic_fifo_lfsr)|16 (generic_fifo_lfsr)|0 |0 (ssram)|25 (generic_fifo_lfsr)|
|Max|87 (generic_fifo_dc_gray)|109 (ssram)|0|0.5 (generic_fifo_dc)|148 (ssram)|
|Avg|49.3|58.2|0|0.33|51.2|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|14 (generic_fifo_lfsr)|8 (generic_fifo_lfsr)|0 |0|25 (generic_fifo_lfsr)|
|Max|112 (generic_fifo_dc_gray)|115 (ssram)|0|0|148 (ssram)|
|Avg|57.2|44.3|0|0|51.2|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|42 (ssram)|57 (generic_fifo_sc_a)|0 |0 (ssram)|28 (generic_fifo_dc)|
|Max|180 (generic_fifo_dc_gray)|130 (generic_fifo_dc_gray)|0|1 (generic_fifo_dc)|148 (ssram)|
|Avg|114.4|86.4|0|0.8|56.4|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|26 (generic_fifo_lfsr)|18 (generic_fifo_lfsr)|0|0|25 (generic_fifo_lfsr)|
|Max|146 (generic_fifo_dc_gray)|173 (ssram)|0|0|148 (ssram)|
|Avg|84.8|71.8|0|0|51.2|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|58 (generic_fifo_sc_b)|31 (generic_fifo_sc_b)|0 |0 (ssram)|28 (generic_fifo_dc)|
|Max|119 (generic_fifo_dc_gray)|88 (generic_fifo_dc_gray)|0|1 (generic_fifo_dc)|148 (ssram)|
|Avg|91|55.4|0|0.8|56.4|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min||||||
|Max||||||
|Avg||||||

### 9. Signal processing
 - #### Vivado

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|65 (stereovision3)|99 (stereovision3)|0 (blob_merge)|0|38 (iir)|
|Max|13828 (stereovision1)|11512 (stereovision1)|5 (iir)|0|278 (stereovision1)|
|Avg|3905|2600.6|1|0|107|

- #### Quartus prime lite

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|92 (stereovision3)|120 (stereovision3)|0 (blob_merge)|0|38 (iir)|
|Max|5436 (blob_merge)|8832 (stereovision1)|76 (stereovision1)|0|278 (stereovision1)|
|Avg|1727.4|2046.8|16|0|128.6|

- #### Lattice diamond

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|123 (stereovision3)|99 (stereovision3)|0 (blob_merge)|0|38 (iir)|
|Max|7798 (blob_merge)|9218 (stereovision1)|152 (stereovision1)|0|278 (stereovision1)|
|Avg|2175|2094.8|34|0|107|

- #### Anlogic

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|79 (stereovision3)|118 (stereovision3)|0 (blob_merge)|0|38 (iir)|
|Max|6125 (blob_merge)|3004 (stereovision1)|152 (stereovision1)|0|278 (stereovision1)|
|Avg|1681|922.6|31.4|0|128.6|

- #### Gowin

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|99 (stereovision3)|118 (stereovision3)|0 (blob_merge)|0|38 (iir)|
|Max|6740 (blob_merge)|552 (blob_merge)|4 (iir)|0|232 (blob_merge)|
|Avg|1873|352.2|1|0|91.2|

- #### OSFPGA

|Benchmark|LUT|FF|DSP|BRAM|IO|
|:---:|:---:|:---:|:---:|:---:|:---:|
|Min|760 (jpeg_qnr)|468 (jpeg_qnr)|0 (jpeg_qnr)|0|42 (jpeg_qnr)|
|Max|10706 (stereovision1)|11775 (stereovision1)|152 (stereovision1)|0|278 (stereovision1)|
|Avg|5875.7|4326|50.7|0|152|
