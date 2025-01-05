#
# world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_east
#

scoreboard players operation ::out a1_x0 = ::in a1_x1
scoreboard players add ::out a1_x0 1
scoreboard players operation ::out a1_z0 = ::in a2_z0
scoreboard players operation ::out a1_x1 = ::in a2_x1
scoreboard players operation ::out a1_z1 = ::in a2_z1

scoreboard players operation ::out a2_x0 = ::in a2_x0
scoreboard players operation ::out a2_x1 = ::in a1_x1
