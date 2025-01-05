#
# world_handler:ticking_areas_manager/main/create_ticking_area
#

# Create a new ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/new

# Add to the ticking area list
function world_handler:ticking_areas_manager/ticking_area_list/add

# Get the ticking area descriptor uuid
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/push

# Update the overlapped ticking area map
function world_handler:ticking_areas_manager/overlapping/rebuild_map

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/pop

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/push

# Emit event
function world_handler:events/emitters/on_ticking_area_created

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/pop
