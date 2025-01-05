#
# world_handler:ticking_areas_manager/ticking_area_list/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile ticking_areas_manager.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile ticking_areas_manager.temp_callback"
function stdmodulesystem:stack/pop
