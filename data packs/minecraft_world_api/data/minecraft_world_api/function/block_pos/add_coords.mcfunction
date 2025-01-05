#
# minecraft_world_api:block_pos/add_coords
#
# Add coord values to a block position
#> Scores
#  @x (in): the x value
#  @y (in): the y value
#  @z (in): the z value
#> Storage
#  @block_pos (inout): the block position
#> Return void

# Get block position values
execute store result score ::minecraft_world_api x run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api y run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api z run function minecraft_world_api:block_pos/get_z

# Sum
scoreboard players operation ::minecraft_world_api x += ::in x
scoreboard players operation ::minecraft_world_api y += ::in y
scoreboard players operation ::minecraft_world_api z += ::in z

# Set values
scoreboard players operation ::in x = ::minecraft_world_api x
scoreboard players operation ::in y = ::minecraft_world_api y
scoreboard players operation ::in z = ::minecraft_world_api z
function minecraft_world_api:block_pos/set_x
function minecraft_world_api:block_pos/set_y
function minecraft_world_api:block_pos/set_z
