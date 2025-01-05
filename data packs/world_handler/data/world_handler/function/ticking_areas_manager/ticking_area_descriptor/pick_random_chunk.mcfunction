#
# world_handler:ticking_areas_manager/ticking_area_descriptor/pick_random_chunk
#
# Pick a random chunk inside a ticking area descriptor center
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @chunk_descriptor (out): the chunk descriptor
#> Return void

# Get ticking area bounding box
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box

# Get bounding box bounds
function utils:bounding_box2di/get_bounds

# Get center
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_center

# Position

# X
scoreboard players operation ::in min = ::out x0
scoreboard players operation ::in max = ::out x1
execute store result score ::in x run function random:rand

# Z
scoreboard players operation ::in min = ::out z0
scoreboard players operation ::in max = ::out z1
execute store result score ::in z run function random:rand

# Dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Create chunk descriptor
function world_handler:chunk_descriptor/new
