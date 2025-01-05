#
# world_handler:ticking_areas_manager/ticking_area_list/remove_by_uuid
#
# Remove a ticking area descriptor of the ticking area list by it's uuid
#> Storage
#  @uuid (in): the uuid
#> Return void

# Remove on matching uuid
data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.uuid set from storage io: uuid
data modify storage io: element_ref set value "storage io: ticking_area_descriptor"
function collections:referenced_list/remove_like
