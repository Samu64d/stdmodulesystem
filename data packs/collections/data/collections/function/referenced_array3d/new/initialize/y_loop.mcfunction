#
# collections:referenced_array3d/new/initialize/y_loop
#

$data modify $(array_ref).data[$(x_index)] append value []

scoreboard players set ::collections::referenced_array3d z_index 0
execute store result storage io: y_index int 1.0 run scoreboard players get ::collections::referenced_array3d y_index
function collections:referenced_array3d/new/initialize/z_loop with storage io:

scoreboard players add ::collections::referenced_array3d y_index 1
execute if score ::collections::referenced_array3d y_index < ::in y_size run function collections:referenced_array3d/new/initialize/y_loop with storage io:

# Loop
