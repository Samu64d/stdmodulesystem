#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_border_bounding_box
#
# Get the border bounding box of a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @bouding_box (out): the border bouding box
#> Return void

data modify storage io: bounding_box set from storage io: ticking_area_descriptor.cache.border_bounding_box
