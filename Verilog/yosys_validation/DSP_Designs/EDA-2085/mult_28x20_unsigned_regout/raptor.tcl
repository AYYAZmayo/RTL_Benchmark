create_design mult_28x20_unsigned_regout
target_device GEMINI_COMPACT_10x8
add_design_file ./mult_28x20_unsigned_regout.v
set_top_module mult_28x20_unsigned_regout
pin_loc_assign_method free
analyze
synthesize
packing
place
route
sta
power
bitstream write_xml