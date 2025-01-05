#
# minecraft_world_api:block_pos/set_y
#
# Set the y value of a block position
#> Scores
#  @y (in): the y value
#> Storage
#  @block_pos (inout): the block position
#> Return void

execute store result storage io: block_pos.y int 1.0 run scoreboard players get ::in y
