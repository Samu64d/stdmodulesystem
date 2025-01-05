#
# collections:array3d/new/initialize/z_loop
#

$data modify storage io: array.data[$(x_index)][$(y_index)] append value 0

scoreboard players add ::collections::array3d z_index 1
execute if score ::collections::array3d z_index < ::in z_size run function collections:array3d/new/initialize/z_loop with storage io:

# Loop
