#
# collections:array2d/fill/x_loop
#

# Y loop
scoreboard players set ::in y 0
execute if score ::out y_size matches 1.. run function collections:array2d/fill/y_loop

scoreboard players add ::in x 1
execute if score ::in x < ::out x_size run function collections:array2d/fill/x_loop

# Loop
