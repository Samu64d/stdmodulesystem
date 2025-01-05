#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_center
#
# Set the center of a ticking area descriptor
#> Scores
#  @center_x (in): the x center position
#  @center_y (in): the z center position
#> Storage
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

# X
execute store result storage io: ticking_area_descriptor.center[0] int 1.0 run scoreboard players get ::in center_x

# Z
execute store result storage io: ticking_area_descriptor.center[1] int 1.0 run scoreboard players get ::in center_z

# Update internal values
function world_handler:ticking_areas_manager/ticking_area_descriptor/internal/on_center_or_size_change
