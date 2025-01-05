#
# world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded
#
# Check if a ticking area descriptor is forceloaded
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return data
#  boolean flag

return run data get storage io: ticking_area_descriptor.forceloaded 1.0
