#
# world_handler:ticking_areas_manager/ticking_area_descriptor/gen_chunk_list
#
# Generate the list of all the chunks that are inside a ticking area matching a ticking area descriptor
#> Scores
#  @include_border (in): boolean flag
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @chunk_list (out): the chunk list
#> Return void

# Get ticking area dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Get ticking area bounding box
execute if score ::in include_border = ::const FALSE run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
execute if score ::in include_border = ::const TRUE run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_border_bounding_box

# Get bounding box bounds
function utils:bounding_box2di/get_bounds

# Calculate the chunk list
scoreboard players operation ::in x0 = ::out x0
scoreboard players operation ::in z0 = ::out z0
scoreboard players operation ::in x1 = ::out x1
scoreboard players operation ::in z1 = ::out z1
function world_handler:ticking_areas_manager/utils/calc_area_chunk_list
