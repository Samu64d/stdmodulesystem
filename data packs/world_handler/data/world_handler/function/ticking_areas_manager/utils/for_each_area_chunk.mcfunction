#
# world_handler:ticking_areas_manager/utils/for_each_area_chunk
#
# Iterate through the list of all the chunks that are inside a world area
# WARNING: Unprotected call stack for performance reasons
#> Scores
#  @x0 (in): lower bound x value
#  @z0 (in): lower bound z value
#  @x1 (in): upper bound x value
#  @z1 (in): upper bound z value
#> Storage
#  @dimension (in): the dimension
#  @callback (in): the callback function
#> Return void

# Copy data
scoreboard players operation ::world_handler::ticking_areas_manager x0 = ::in x0
scoreboard players operation ::world_handler::ticking_areas_manager z0 = ::in z0
scoreboard players operation ::world_handler::ticking_areas_manager x1 = ::in x1
scoreboard players operation ::world_handler::ticking_areas_manager z1 = ::in z1
data modify storage world_handler:volatile ticking_areas_manager.temp_dimension2 set from storage io: dimension

# Start loop
scoreboard players operation ::world_handler::ticking_areas_manager x = ::world_handler::ticking_areas_manager x0
execute if score ::world_handler::ticking_areas_manager x0 <= ::world_handler::ticking_areas_manager x1 if score ::world_handler::ticking_areas_manager z0 <= ::world_handler::ticking_areas_manager z1 run function world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_x
