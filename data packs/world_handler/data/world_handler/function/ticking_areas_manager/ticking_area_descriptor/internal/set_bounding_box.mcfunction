#
# world_handler:ticking_areas_manager/ticking_area_descriptor/internal/set_bounding_box
#
# Set the bounding box of a ticking area descriptor
#> Storage
#  @bounding_box (in): the bounding box
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

data modify storage io: ticking_area_descriptor.cache.bounding_box set from storage io: bounding_box
