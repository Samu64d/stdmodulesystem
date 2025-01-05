#
# world_handler:ticking_areas_manager/main/remove_ticking_area
#

# Get the ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/push

# Remove the ticking area from the ticking area list
function world_handler:ticking_areas_manager/ticking_area_list/remove_by_uuid

# Update the overlapped ticking area map
function world_handler:ticking_areas_manager/overlapping/rebuild_map

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/pop

# Emit event
function world_handler:events/emitters/on_ticking_area_removed
