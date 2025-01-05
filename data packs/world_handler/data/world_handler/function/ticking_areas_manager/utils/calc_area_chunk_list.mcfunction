#
# world_handler:ticking_areas_manager/utils/calc_area_chunk_list
#
# Get the list of all the chunks that are inside a world area
#> Scores
#  @x0 (in): lower bound x value
#  @z0 (in): lower bound z value
#  @x1 (in): upper bound x value
#  @z1 (in): upper bound z value
#> Storage
#  @dimension (in): the dimension
#  @chunk_list (out): the chunk list
#> Return void

# Create a new list
data modify storage io: list_ref set value "storage io: chunk_list"
function collections:referenced_list/new

# Start loop
scoreboard players operation ::in x = ::in x0
execute if score ::in x0 <= ::in x1 if score ::in z0 <= ::in z1 run function world_handler:ticking_areas_manager/utils/calc_area_chunk_list/x_loop
