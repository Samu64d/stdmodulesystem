#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_overlapped
#
# Set the overlapped ticking area list of a ticking area descriptor
#> Storage
#  @ticking_area_uuid_list (in): the overlapped ticking area uuid list
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

data modify storage io: ticking_area_descriptor.overlapped set from storage io: ticking_area_uuid_list
