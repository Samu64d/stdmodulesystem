#
# collections:array3d/new/initialize/x_loop
#

data modify storage io: array.data append value []

scoreboard players set ::collections::array3d y_index 0
execute store result storage io: x_index int 1.0 run scoreboard players get ::collections::array3d x_index
function collections:array3d/new/initialize/y_loop with storage io:

scoreboard players add ::collections::array3d x_index 1
execute if score ::collections::array3d x_index < ::in x_size run function collections:array3d/new/initialize/x_loop

# Loop
