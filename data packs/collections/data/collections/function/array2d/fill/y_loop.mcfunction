#
# collections:array2d/fill/y_loop
#

# Set element at point
function collections:array2d/set_point

scoreboard players add ::in y 1
execute if score ::in y < ::out y_size run function collections:array2d/fill/y_loop

# Loop
