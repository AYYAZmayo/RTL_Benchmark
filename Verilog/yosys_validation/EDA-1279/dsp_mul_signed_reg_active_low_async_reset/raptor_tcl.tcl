create_design dsp_mul_signed_reg_active_low_async_reset
target_device GEMINI
add_include_path ./rtl
add_library_path ./rtl
add_library_ext .v .sv
add_design_file ./rtl/dsp_mul_signed_reg_active_low_async_reset.v
set_top_module dsp_mul_signed_reg_active_low_async_reset
synthesize delay
