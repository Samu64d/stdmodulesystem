#
# collections:referenced_array2d/new/initialize/y_loop
#

$data modify $(array_ref).data[$(x_index)] append value 0

scoreboard players add ::collections::referenced_array2d y_index 1
execute if score ::collections::referenced_array2d y_index < ::in y_size run function collections:referenced_array2d/new/initialize/y_loop with storage io:

# Loop
