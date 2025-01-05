#
# minecraft_world_api:block_pos/set_z
#
# Set the z value of a block position
#> Scores
#  @z (in): the z value
#> Storage
#  @block_pos (inout): the block position
#> Return void

execute store result storage io: block_pos.z int 1.0 run scoreboard players get ::in z
