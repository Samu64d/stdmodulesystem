#
# world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid
#
# Get, if exists, a ticking area descriptor from the ticking area list by it's uuid
#> Storage
#  @uuid (in): the uuid
#  @ticking_area_descriptor (out): the ticking area descriptor
#> Return data
#  boolean flag

# Get on matching uuid
data modify storage io: list_ref set value "storage world_handler:data ticking_areas_manager.ticking_area_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.uuid set from storage io: uuid
execute store result score ::world_handler::ticking_areas_manager success run function collections:referenced_list/get_first_like
execute if score ::world_handler::ticking_areas_manager success = ::const TRUE run data modify storage io: ticking_area_descriptor set from storage io: element

# Return data
return run scoreboard players get ::world_handler::ticking_areas_manager success
