#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification
#
# Schedule chunk events from a location modification of a ticking area
#> Storage
#  @old_ticking_area_descriptor (in): the old ticking area descriptor
#  @new_ticking_area_descriptor (in): the new ticking area descriptor
#> Return void

# Check if the two ticking areas are overlapped
scoreboard players operation ::in check_uuid = ::const FALSE
data modify storage io: ticking_area_descriptor0 set from storage io: new_ticking_area_descriptor
data modify storage io: ticking_area_descriptor1 set from storage io: old_ticking_area_descriptor
execute store result score ::world_handler::ticking_area_chunks_manager are_overlapped run function world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped
execute if score ::world_handler::ticking_area_chunks_manager are_overlapped = ::const FALSE run function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/on_overlapping_check_fails
execute if score ::world_handler::ticking_area_chunks_manager are_overlapped = ::const FALSE run return 0

# In area chunks

# Get the old ticking area bounds
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
function utils:bounding_box2di/get_bounds
scoreboard players operation ::in a1_x0 = ::out x0
scoreboard players operation ::in a1_z0 = ::out z0
scoreboard players operation ::in a1_x1 = ::out x1
scoreboard players operation ::in a1_z1 = ::out z1

# Get the new ticking area bounds
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
function utils:bounding_box2di/get_bounds
scoreboard players operation ::in a2_x0 = ::out x0
scoreboard players operation ::in a2_z0 = ::out z0
scoreboard players operation ::in a2_x1 = ::out x1
scoreboard players operation ::in a2_z1 = ::out z1

# Get dimension
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Get chunk list
function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list

# Iterate through the chunk list
data modify storage io: list_ref set value "storage io: chunk_list"
data modify storage io: callback set value "world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/callback_creation"
function collections:referenced_list/for_each

# Out area chunks

# Get the new ticking area bounds
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
function utils:bounding_box2di/get_bounds
scoreboard players operation ::in a1_x0 = ::out x0
scoreboard players operation ::in a1_z0 = ::out z0
scoreboard players operation ::in a1_x1 = ::out x1
scoreboard players operation ::in a1_z1 = ::out z1

# Get the old ticking area bounds
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
function utils:bounding_box2di/get_bounds
scoreboard players operation ::in a2_x0 = ::out x0
scoreboard players operation ::in a2_z0 = ::out z0
scoreboard players operation ::in a2_x1 = ::out x1
scoreboard players operation ::in a2_z1 = ::out z1

# Get dimension
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Get chunk list
function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list

# Iterate through the chunk list
data modify storage io: list_ref set value "storage io: chunk_list"
data modify storage io: callback set value "world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/callback_destruction"
function collections:referenced_list/for_each
