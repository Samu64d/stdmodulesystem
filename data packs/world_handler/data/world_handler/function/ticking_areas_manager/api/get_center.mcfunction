#
# world_handler:ticking_areas_manager/api/get_center
#
# Get the center of a ticking area
#> Scores
#  @center_x (out): the x center position
#  @center_z (out): the z center position
#> Storage
#  @uuid (in): the ticking area uuid
#> Return void

# Get the ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Get center
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_center
