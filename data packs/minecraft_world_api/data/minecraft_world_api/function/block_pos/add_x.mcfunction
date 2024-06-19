#
# minecraft_world_api:block_pos/add_x
#
# Add coord values to a block x position
#> Scores
#  @x (in): the x value
#> Storage
#  @block_pos (inout): the block position
#> Return void

# Get block position x value
execute store result score ::minecraft_world_api x run function minecraft_world_api:block_pos/get_x

# Sum
scoreboard players operation ::minecraft_world_api x += ::in x

# Set x value
scoreboard players operation ::in x = ::minecraft_world_api x
function minecraft_world_api:block_pos/set_x
