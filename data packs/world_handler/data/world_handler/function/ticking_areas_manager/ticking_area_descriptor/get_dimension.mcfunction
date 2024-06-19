#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension
#
# Get the dimension of a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @dimension (out): the dimension
#> Return void

data modify storage io: dimension set from storage io: ticking_area_descriptor.dimension
