#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid
#
# Get the uuid of a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @uuid (out): the uuid
#> Return void

data modify storage io: uuid set from storage io: ticking_area_descriptor.uuid
