#
# minecraft_world_api:block_pos/add_z
#
# Add coord values to a block z position
#> Scores
#  @z (in): the z value
#> Storage
#  @block_pos (inout): the block position
#> Return void

# Get block position z value
execute store result score ::minecraft_world_api z run function minecraft_world_api:block_pos/get_z

# Sum
scoreboard players operation ::minecraft_world_api z += ::in z

# Set z value
scoreboard players operation ::in z = ::minecraft_world_api z
function minecraft_world_api:block_pos/set_z
