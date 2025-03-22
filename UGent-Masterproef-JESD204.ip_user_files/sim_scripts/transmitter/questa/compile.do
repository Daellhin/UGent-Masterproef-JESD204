vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
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
"../../../bd/transmitter/sim/transmitter.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

