#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_overlapped
#
# Get the overlapped ticking area list of a ticking area matching a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @ticking_area_uuid_list (out): the overlapped ticking area uuid list
#> Return void

data modify storage io: ticking_area_uuid_list set from storage io: ticking_area_descriptor.overlapped
