#
# world_handler:ticking_areas_manager/ticking_area_list/for_each
#
# Iterate through the ticking area list
#> Storage
#  @callback (in): the callback function
#> Return void

# Copy data
data modify storage world_handler:volatile ticking_areas_manager.temp_callback set from storage io: callback

# Iterate through the ticking area list
data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
data modify storage io: callback set value "world_handler:ticking_areas_manager/ticking_area_list/for_each/callback"
function collections:referenced_list/for_each
