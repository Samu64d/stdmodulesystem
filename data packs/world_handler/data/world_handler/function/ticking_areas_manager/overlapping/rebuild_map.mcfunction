#
# world_handler:ticking_areas_manager/overlapping/rebuild_map
#

# Iterate through the ticking area list
data modify storage io: callback set value "world_handler:ticking_areas_manager/overlapping/rebuild_map/callback"
function world_handler:ticking_areas_manager/ticking_area_list/for_each
