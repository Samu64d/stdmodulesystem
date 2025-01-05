#
# collections:array3d/fill/z_loop
#

# Set element at point
function collections:array3d/set_point

scoreboard players add ::in z 1
execute if score ::in z < ::out z_size run function collections:array3d/fill/z_loop

# Loop
