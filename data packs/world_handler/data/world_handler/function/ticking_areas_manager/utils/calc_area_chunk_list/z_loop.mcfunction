#
# world_handler:ticking_areas_manager/utils/calc_area_chunk_list/z_loop
#

# Create a new chunk descriptor
function world_handler:chunk_descriptor/new

# Add the chunk descriptor to the chunk list
data modify storage io: element_ref set value "storage io: chunk_descriptor"
function collections:referenced_list/add_last

scoreboard players add ::in z 1
execute if score ::in z <= ::in z1 run function world_handler:ticking_areas_manager/utils/calc_area_chunk_list/z_loop

# Loop
