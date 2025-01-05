#
# collections:referenced_array2d/new/new
#

# Create object
$data modify $(array_ref) set value {data: [], x_size: 0, y_size: 0}

# Set x size
$execute store result $(array_ref).x_size int 1.0 run scoreboard players get ::in x_size

# Set y size
$execute store result $(array_ref).y_size int 1.0 run scoreboard players get ::in y_size
