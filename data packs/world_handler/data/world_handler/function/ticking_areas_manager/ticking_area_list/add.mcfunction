#
# world_handler:ticking_areas_manager/ticking_area_list/add
#
# Add a ticking area descriptor to the ticking area list
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# Add the element to the ticking area list
data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
data modify storage io: element_ref set value "storage io: ticking_area_descriptor"
function collections:referenced_list/add_last
