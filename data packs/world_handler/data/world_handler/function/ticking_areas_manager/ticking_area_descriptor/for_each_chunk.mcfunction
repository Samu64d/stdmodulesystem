#
# world_handler:ticking_areas_manager/ticking_area_descriptor/for_each_chunk
#
# Iterate through the list of all the chunks that are inside a ticking area matching a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @callback (in): the callback function
#> Return void

# Get ticking area dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Get ticking area bounding box
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box

# Get bounding box bounds
function utils:bounding_box2di/get_bounds

# Iterate through the the chunk list
scoreboard players operation ::in x0 = ::out x0
scoreboard players operation ::in z0 = ::out z0
scoreboard players operation ::in x1 = ::out x1
scoreboard players operation ::in z1 = ::out z1
function world_handler:ticking_areas_manager/utils/for_each_area_chunk
