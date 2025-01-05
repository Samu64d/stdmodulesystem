#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_uuid
#
# Set the uuid of a ticking area descriptor
#> Storage
#  @uuid (in): the uuid
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

data modify storage io: ticking_area_descriptor.uuid set from storage io: uuid
