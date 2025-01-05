#
# collections:array2d/new/initialize/x_loop
#

data modify storage io: array.data append value []

scoreboard players set ::collections::array2d y_index 0
execute store result storage io: x_index int 1.0 run scoreboard players get ::collections::array2d x_index
function collections:array2d/new/initialize/y_loop with storage io:

scoreboard players add ::collections::array2d x_index 1
execute if score ::collections::array2d x_index < ::in x_size run function collections:array2d/new/initialize/x_loop

# Loop
