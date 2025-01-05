#
# world_handler:ticking_areas_manager/api/remove
#
# Remove a ticking area
#> Storage
#  @uuid (in): the ticking area uuid
#> Return void

execute if function world_handler:ticking_areas_manager/api/exists run function world_handler:ticking_areas_manager/main/remove_ticking_area
