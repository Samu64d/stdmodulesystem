#
# world_handler:ticking_areas_manager/api/update
#
# Update a ticking area
#> Scores
#  @center_x (in): the x center position
#  @center_z (in): the z center position
#  @size (in): the size
#> Storage
#  @dimension (in): the dimension
#  @uuid (in): the ticking area uuid
#> Return void

execute if function world_handler:ticking_areas_manager/api/exists run function world_handler:ticking_areas_manager/main/modify_ticking_area
