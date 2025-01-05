#
# world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_south
#

scoreboard players operation ::out a2_z0 = ::in a1_z1
scoreboard players add ::out a2_z0 1
scoreboard players operation ::out a2_z1 = ::in a2_z1
