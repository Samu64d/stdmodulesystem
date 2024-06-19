#
# world_handler:ticking_areas_manager/utils/calc_moved_area_new_or_left_chunk_list/on_move_north
#

scoreboard players operation ::out a2_z0 = ::in a2_z0
scoreboard players operation ::out a2_z1 = ::in a1_z0
scoreboard players remove ::out a2_z1 1
