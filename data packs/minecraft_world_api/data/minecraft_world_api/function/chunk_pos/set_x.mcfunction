#
# minecraft_world_api:chunk_pos/set_x
#
# Set the x value of a chunk position
#> Scores
#  @x (in): the x value
#> Storage
#  @chunk_pos (inout): the chunk position
#> Return void

execute store result storage io: chunk_pos.x int 1.0 run scoreboard players get ::in x
