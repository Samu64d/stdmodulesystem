#
# world_handler:ticking_areas_manager/ticking_area_descriptor/is_from_previous_session
#
# Check if a ticking area descriptor is from a previous session
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return data
#  boolean flag

return run data get storage io: ticking_area_descriptor.from_previous_session 1.0
