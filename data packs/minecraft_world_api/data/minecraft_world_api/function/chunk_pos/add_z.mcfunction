#
# minecraft_world_api:chunk_pos/add_z
#
# Add coord values to a chunk z position
#> Scores
#  @z (in): the z value
#> Storage
#  @chunk_pos (inout): the chunk position
#> Return void

# Get chunk position z value
execute store result score ::minecraft_world_api z run function minecraft_world_api:chunk_pos/get_z

# Sum
scoreboard players operation ::minecraft_world_api z += ::in z

# Set z value
scoreboard players operation ::in z = ::minecraft_world_api z
function minecraft_world_api:chunk_pos/set_z
