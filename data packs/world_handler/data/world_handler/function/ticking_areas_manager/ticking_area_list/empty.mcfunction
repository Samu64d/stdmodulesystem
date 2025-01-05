#
# world_handler:ticking_areas_manager/ticking_area_list/empty
#
# Empty the ticking area list
#> Return void

data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
function collections:referenced_list/empty
