#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
#
# Get the bounding box of a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @bounding_box (out): the bounding box
#> Return void

data modify storage io: bounding_box set from storage io: ticking_area_descriptor.cache.bounding_box
