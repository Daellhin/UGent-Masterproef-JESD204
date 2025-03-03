transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/transmitter/ip/transmitter_clock_generator_0_0/sim/transmitter_clock_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_local_clock_generator_0_0/sim/transmitter_local_clock_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_scrambler_0_1/sim/transmitter_scrambler_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_gigabit_transceiver_0_0/sim/transmitter_gigabit_transceiver_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_alignment_substititu_0_3/sim/transmitter_alignment_substititu_0_3.vhd" \
"../../../bd/transmitter/ip/transmitter_transmitter_state_0_0/sim/transmitter_transmitter_state_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_ILAS_generator_0_1/sim/transmitter_ILAS_generator_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_CGS_Generator_0_0/sim/transmitter_CGS_Generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_MUX_3x1_0_0/sim/transmitter_MUX_3x1_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_MUX_3x1_1_0/sim/transmitter_MUX_3x1_1_0.vhd" \
"../../../bd/transmitter/ip/transmitter_encoder_wrapper_0_0/sim/transmitter_encoder_wrapper_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_single_ADC_frame_map_0_0/sim/transmitter_single_ADC_frame_map_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_sync_decoder_0_0/sim/transmitter_sync_decoder_0_0.vhd" \
"../../../bd/transmitter/sim/transmitter.vhd" \


