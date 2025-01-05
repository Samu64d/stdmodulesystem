#
# world_handler:ticking_areas_manager/ticking_area_list/update_by_uuid
#
# Update a ticking area descriptor of the ticking area list by it's uuid with the data of another ticking area descriptor
#> Storage
#  @uuid (in): the uuid
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# Set uuid
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_uuid

# Update on matching uuid
data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.uuid set from storage io: uuid
data modify storage io: element_ref set value "storage io: ticking_area_descriptor"
function collections:referenced_list/update_like
