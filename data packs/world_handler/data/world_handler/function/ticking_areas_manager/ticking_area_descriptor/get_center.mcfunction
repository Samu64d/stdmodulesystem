#
# world_handler:ticking_areas_manager/ticking_area_descriptor/get_center
#
# Get the center of a ticking area descriptor
#> Scores
#  @center_x (out): the x center position
#  @center_y (out): the z center position
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# X
execute store result score ::out center_x run data get storage io: ticking_area_descriptor.center[0] 1.0

# Z
execute store result score ::out center_z run data get storage io: ticking_area_descriptor.center[1] 1.0
