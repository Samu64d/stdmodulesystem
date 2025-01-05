#
# world_handler:ticking_areas_manager/overlapping/rebuild_map/callback
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/push

# Calculate the overlapped ticking area list
function world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/pop

# Set overlapped ticking area list
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_overlapped

# Get uuid
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Update
function world_handler:ticking_areas_manager/ticking_area_list/update_by_uuid
