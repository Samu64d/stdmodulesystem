#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_dimension
#
# Set the dimension of a ticking area descriptor
#> Storage
#  @dimension (in): the dimension
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

data modify storage io: ticking_area_descriptor.dimension set from storage io: dimension
