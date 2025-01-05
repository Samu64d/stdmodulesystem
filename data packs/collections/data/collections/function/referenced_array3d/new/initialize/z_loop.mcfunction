#
# collections:referenced_array3d/new/initialize/z_loop
#

$data modify $(array_ref).data[$(x_index)][$(y_index)] append value 0

scoreboard players add ::collections::referenced_array3d z_index 1
execute if score ::collections::referenced_array3d z_index < ::in z_size run function collections:referenced_array3d/new/initialize/z_loop with storage io:

# Loop
