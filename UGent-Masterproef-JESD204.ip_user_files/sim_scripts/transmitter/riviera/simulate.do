transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+transmitter  -L xpm -L xil_defaultlib -L util_vector_logic_v2_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.transmitter xil_defaultlib.glbl

do {transmitter.udo}

run 1000ns

endsim

quit -force
