#
# world_handler:ticking_areas_manager/ticking_area_list/get_count
#
# Get the count of ticking area descriptors in the ticking area list
#> Return data
#  ticking area descriptor count

data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
return run function collections:referenced_list/get_length
