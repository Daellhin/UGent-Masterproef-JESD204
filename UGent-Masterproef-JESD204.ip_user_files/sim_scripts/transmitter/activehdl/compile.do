transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_4

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_4 activehdl/util_vector_logic_v2_0_4

vlog -work xpm  -sv2k12 "+incdir+../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/3242" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/transmitter/ip/transmitter_local_clock_generator_0_0/sim/transmitter_local_clock_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_scrambler_0_1/sim/transmitter_scrambler_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_transmitter_state_0_0/sim/transmitter_transmitter_state_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_ILAS_generator_0_1/sim/transmitter_ILAS_generator_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_CGS_Generator_0_0/sim/transmitter_CGS_Generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_MUX_3x1_0_0/sim/transmitter_MUX_3x1_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_MUX_3x1_1_0/sim/transmitter_MUX_3x1_1_0.vhd" \
"../../../bd/transmitter/ip/transmitter_encoder_wrapper_0_0/sim/transmitter_encoder_wrapper_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_single_ADC_frame_map_0_0/sim/transmitter_single_ADC_frame_map_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_sync_decoder_0_0/sim/transmitter_sync_decoder_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_serializer_0_0/sim/transmitter_serializer_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_ADC_pattern_generator_0_0/sim/transmitter_ADC_pattern_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_alignment_substituti_0_1/sim/transmitter_alignment_substituti_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_MUX_2x1_0_0/sim/transmitter_MUX_2x1_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/3242" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../bd/transmitter/ip/transmitter_clk_wiz_0_0/transmitter_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/transmitter/ip/transmitter_clk_wiz_0_0/transmitter_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/transmitter/sim/transmitter.vhd" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/3242" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/3242" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../bd/transmitter/ip/transmitter_util_vector_logic_0_0/sim/transmitter_util_vector_logic_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

