#
# world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside
#
# Check if a chunk is inside a ticking area matching a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

scoreboard players operation ::world_handler::ticking_areas_manager is_chunk_inside = ::const FALSE

# Get ticking area dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension
data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension

# Get chunk dimension
function world_handler:chunk_descriptor/get_dimension

# Check matching
execute store success score ::world_handler::ticking_areas_manager success run data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension
execute store result score ::world_handler::ticking_areas_manager success if score ::world_handler::ticking_areas_manager success = ::const FALSE

# On check success
execute if score ::world_handler::ticking_areas_manager success = ::const TRUE run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside/on_dimension_match_success

# Return data
return run scoreboard players get ::world_handler::ticking_areas_manager is_chunk_inside
