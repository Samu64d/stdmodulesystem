#
# world_handler:ticking_areas_manager/api/set_center
#
# Set the center of a ticking area
#> Scores
#  @center_x (out): the x center position
#  @center_z (out): the z center position
#> Storage
#  @uuid (in): the ticking area uuid
#> Return void

function world_handler:ticking_areas_manager/api/get_dimension
execute store result score ::in size run function world_handler:ticking_areas_manager/api/get_size
function world_handler:ticking_areas_manager/api/update
