#
# world_handler:ticking_areas_manager/ticking_area_descriptor/internal/set_border_bounding_box
#
# Set the border bounding box of a ticking area descriptor
#> Storage
#  @bouding_box (in): the border bounding box
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

data modify storage io: ticking_area_descriptor.cache.border_bounding_box set from storage io: bounding_box
