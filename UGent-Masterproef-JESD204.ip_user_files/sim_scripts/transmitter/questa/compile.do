vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/util_vector_logic_v2_0_4

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_4 questa_lib/msim/util_vector_logic_v2_0_4

vcom -work xil_defaultlib  -93  \
"../../../bd/transmitter/ip/transmitter_gigabit_transceiver_0_0/sim/transmitter_gigabit_transceiver_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_encoder_0_0/sim/transmitter_encoder_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_scrambler_0_1/sim/transmitter_scrambler_0_1.vhd" \
"../../../bd/transmitter/ip/transmitter_synchroniser_0_0/sim/transmitter_synchroniser_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_mux_0_0/sim/transmitter_mux_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_frame_mapper_0_0/sim/transmitter_frame_mapper_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  \
"../../../../UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/transmitter/ip/transmitter_util_vector_logic_0_0/sim/transmitter_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/transmitter/ip/transmitter_clock_generator_0_0/sim/transmitter_clock_generator_0_0.vhd" \
"../../../bd/transmitter/ip/transmitter_local_clock_generator_0_0/sim/transmitter_local_clock_generator_0_0.vhd" \
"../../../bd/transmitter/sim/transmitter.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

