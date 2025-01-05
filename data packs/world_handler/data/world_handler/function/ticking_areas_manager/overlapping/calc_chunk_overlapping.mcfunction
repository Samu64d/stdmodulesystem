#
# world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping
#
# Calculate the overlapping index of a chunk inside a ticking area
#> Scores
#  @overlapping_index (out): the overlapping index
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

scoreboard players set ::out overlapping_index 0

# Check for overlapping with the same area
execute if function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside run scoreboard players add ::out overlapping_index 1

# Get ticking area forceloading
execute store result score ::world_handler::ticking_areas_manager forceloaded run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded

# Get the overlapped ticking area uuid list
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_overlapped

# Iterate through the overlapped ticking area uuid list
data modify storage io: list_ref set value "storage io: ticking_area_uuid_list"
data modify storage io: callback set value "world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping/callback"
function collections:referenced_list/for_each
