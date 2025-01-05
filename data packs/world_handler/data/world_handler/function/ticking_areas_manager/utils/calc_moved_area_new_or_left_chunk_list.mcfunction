#
# world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list
#
# Calculate the list of chunks that are joined or left when an area change position
#> Scores
#  @a1_x0 (in): old area lower bound x value
#  @a1_z0 (in): old area lower bound z value
#  @a1_x1 (in): old area upper bound x value
#  @a1_z1 (in): old area upper bound z value
#  @a2_x0 (in): new area lower bound x value
#  @a2_z0 (in): new area lower bound z value
#  @a2_x1 (in): new area upper bound x value
#  @a2_z1 (in): new area upper bound z value
#> Storage
#  @dimension (in): the dimension
#  @chunk_list (out): the chunk list
#> Return void

# Calculate area movement

# X
scoreboard players operation ::world_handler::ticking_areas_manager area_x_diff = ::in a2_x0
scoreboard players operation ::world_handler::ticking_areas_manager area_x_diff -= ::in a1_x0

# Z
scoreboard players operation ::world_handler::ticking_areas_manager area_z_diff = ::in a2_z0
scoreboard players operation ::world_handler::ticking_areas_manager area_z_diff -= ::in a1_z0

# On horizontal movement
execute if score ::world_handler::ticking_areas_manager area_x_diff matches 0.. run function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_east
execute if score ::world_handler::ticking_areas_manager area_x_diff matches ..-1 run function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_west

# On vertical movement
execute if score ::world_handler::ticking_areas_manager area_z_diff matches 0.. run function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_south
execute if score ::world_handler::ticking_areas_manager area_z_diff matches ..-1 run function world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_north

# First area
scoreboard players operation ::in x0 = ::out a1_x0
scoreboard players operation ::in z0 = ::out a1_z0
scoreboard players operation ::in x1 = ::out a1_x1
scoreboard players operation ::in z1 = ::out a1_z1
function world_handler:ticking_areas_manager/utils/calc_area_chunk_list
data modify storage world_handler:volatile ticking_areas_manager.temp_chunk_list set from storage io: chunk_list

# Second area
scoreboard players operation ::in x0 = ::out a2_x0
scoreboard players operation ::in z0 = ::out a2_z0
scoreboard players operation ::in x1 = ::out a2_x1
scoreboard players operation ::in z1 = ::out a2_z1
function world_handler:ticking_areas_manager/utils/calc_area_chunk_list

# Concat the two chunk lists
data modify storage io: list0_ref set value "storage io: chunk_list"
data modify storage io: list1_ref set value "storage world_handler:volatile ticking_areas_manager.temp_chunk_list"
function collections:referenced_list/concat
