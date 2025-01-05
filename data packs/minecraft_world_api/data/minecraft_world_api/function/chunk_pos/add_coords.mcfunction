#
# minecraft_world_api:chunk_pos/add_coords
#
# Add coord values to a chunk position
#> Scores
#  @x (in): the x value
#  @z (in): the z value
#> Storage
#  @chunk_pos (inout): the chunk position
#> Return void

# Get chunk position values
execute store result score ::minecraft_world_api x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::minecraft_world_api z run function minecraft_world_api:chunk_pos/get_z

# Sum
scoreboard players operation ::minecraft_world_api x += ::in x
scoreboard players operation ::minecraft_world_api z += ::in z

# Set values
scoreboard players operation ::in x = ::minecraft_world_api x
scoreboard players operation ::in z = ::minecraft_world_api z
function minecraft_world_api:chunk_pos/set_x
function minecraft_world_api:chunk_pos/set_z
