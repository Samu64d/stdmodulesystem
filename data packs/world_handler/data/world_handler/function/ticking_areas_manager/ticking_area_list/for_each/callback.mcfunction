#
# world_handler:ticking_areas_manager/ticking_area_list/for_each/callback
#

# Call callback function
data modify storage io: ticking_area_descriptor set from storage io: element
data modify storage io: callback set from storage world_handler:volatile ticking_areas_manager.temp_callback
function world_handler:ticking_areas_manager/ticking_area_list/for_each/callback2 with storage io:
