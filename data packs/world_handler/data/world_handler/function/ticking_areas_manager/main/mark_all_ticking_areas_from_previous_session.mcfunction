#
# world_handler:ticking_areas_manager/main/mark_all_ticking_areas_from_previous_session
#

# Iterate through the ticking area list
data modify storage io: callback set value "world_handler:ticking_areas_manager/main/mark_all_ticking_areas_from_previous_session/callback"
function world_handler:ticking_areas_manager/ticking_area_list/for_each
