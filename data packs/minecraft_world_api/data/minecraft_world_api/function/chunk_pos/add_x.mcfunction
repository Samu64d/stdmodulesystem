#
# minecraft_world_api:chunk_pos/add_x
#
# Add coord values to a chunk x position
#> Scores
#  @x (in): the x value
#> Storage
#  @chunk_pos (inout): the chunk position
#> Return void

# Get chunk position x value
execute store result score ::minecraft_world_api x run function minecraft_world_api:chunk_pos/get_x

# Sum
scoreboard players operation ::minecraft_world_api x += ::in x

# Set x value
scoreboard players operation ::in x = ::minecraft_world_api x
function minecraft_world_api:chunk_pos/set_x
