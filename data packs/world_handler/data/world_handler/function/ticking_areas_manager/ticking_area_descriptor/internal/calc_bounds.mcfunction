#
# world_handler:ticking_areas_manager/ticking_area_descriptor/internal/calc_bounds
#
# Calculate the bounding chunk positions of a ticking area descriptor
#> Scores
#  @x0 (out): lower bound x value
#  @z0 (out): lower bound z value
#  @x1 (out): upper bound x value
#  @z1 (out): upper bound z value
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# Get area center
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_center

# Get area size
execute store result score ::world_handler::ticking_areas_manager size run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_size

# Lower bound

# X
scoreboard players operation ::out x0 = ::out center_x
scoreboard players operation ::out x0 -= ::world_handler::ticking_areas_manager size

# Z
scoreboard players operation ::out z0 = ::out center_z
scoreboard players operation ::out z0 -= ::world_handler::ticking_areas_manager size

# Upper bound

# X
scoreboard players operation ::out x1 = ::out center_x
scoreboard players operation ::out x1 += ::world_handler::ticking_areas_manager size

# Z
scoreboard players operation ::out z1 = ::out center_z
scoreboard players operation ::out z1 += ::world_handler::ticking_areas_manager size
