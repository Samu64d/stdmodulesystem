#
# world_handler:ticking_areas_manager/main/remove_all_ticking_areas
#

# Iterate through the ticking area list
data modify storage io: callback set value "world_handler:ticking_areas_manager/main/remove_all_ticking_areas/callback"
function world_handler:ticking_areas_manager/ticking_area_list/for_each_reverse
