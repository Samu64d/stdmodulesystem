#
# minecraft_world_api:chunk_pos/set_z
#
# Set the z value of a chunk position
#> Scores
#  @z (in): the z value
#> Storage
#  @chunk_pos (inout): the chunk position
#> Return void

execute store result storage io: chunk_pos.z int 1.0 run scoreboard players get ::in z
