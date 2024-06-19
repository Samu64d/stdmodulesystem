#
# minecraft_world_api:block_pos/set_x
#
# Set the x value of a block position
#> Scores
#  @x (in): the x value
#> Storage
#  @block_pos (inout): the block position
#> Return void

execute store result storage io: block_pos.x int 1.0 run scoreboard players get ::in x
