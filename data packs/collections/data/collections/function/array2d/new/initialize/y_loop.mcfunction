#
# collections:array2d/new/initialize/y_loop
#

$data modify storage io: array.data[$(x_index)] append value 0

scoreboard players add ::collections::array2d y_index 1
execute if score ::collections::array2d y_index < ::in y_size run function collections:array2d/new/initialize/y_loop with storage io:

# Loop
