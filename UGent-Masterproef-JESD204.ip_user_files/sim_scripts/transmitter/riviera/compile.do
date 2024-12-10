transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4

vcom -work xil_defaultlib -93  -incr \
"../../../bd/transmitter/ip/transmitter_gigabit_transceiver_0_0/sim/transmitter_gigabit_transceiver_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_encoder_0_0/sim/transmitter_encoder_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_scrambler_0_1/sim/transmitter_scrambler_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_synchroniser_0_0/sim/transmitter_synchroniser_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_mux_0_0/sim/transmitter_mux_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_frame_mapper_0_0/sim/transmitter_frame_mapper_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../bd/transmitter/ip/transmitter_util_vector_logic_0_0/sim/transmitter_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/transmitter/ip/transmitter_clock_generator_0_0/sim/transmitter_clock_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_local_clock_generator_0_0/sim/transmitter_local_clock_generator_0_0.vhd" \
"../../../bd/transmitter/sim/transmitter.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

