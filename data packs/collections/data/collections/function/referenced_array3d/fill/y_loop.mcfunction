#
# collections:referenced_array3d/fill/y_loop
#

# Z loop
scoreboard players set ::in z 0
execute if score ::out z_size matches 1.. run function collections:referenced_array3d/fill/z_loop

scoreboard players add ::in y 1
execute if score ::in y < ::out y_size run function collections:referenced_array3d/fill/y_loop

# Loop
