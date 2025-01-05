#
# minecraft_world_api:block_pos/add_y
#
# Add coord values to a block y position
#> Scores
#  @y (in): the y value
#> Storage
#  @block_pos (inout): the block position
#> Return void

# Get block position y value
execute store result score ::minecraft_world_api y run function minecraft_world_api:block_pos/get_y

# Sum
scoreboard players operation ::minecraft_world_api y += ::in y

# Set y value
scoreboard players operation ::in y = ::minecraft_world_api y
function minecraft_world_api:block_pos/set_y
