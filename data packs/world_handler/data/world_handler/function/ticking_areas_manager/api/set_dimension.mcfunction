#
# world_handler:ticking_areas_manager/api/set_dimension
#
# Set the dimension of a ticking area
#> Storage
#  @dimension (in): the dimension
#  @uuid (in): the ticking area uuid
#> Return void

function world_handler:ticking_areas_manager/api/get_center
scoreboard players operation ::in center_x = ::out center_x
scoreboard players operation ::in center_z = ::out center_z
execute store result score ::in size run function world_handler:ticking_areas_manager/api/get_size
function world_handler:ticking_areas_manager/api/update
