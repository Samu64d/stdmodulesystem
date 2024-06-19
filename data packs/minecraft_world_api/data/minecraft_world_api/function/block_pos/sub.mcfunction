#
# minecraft_world_api:block_pos/sub
#
# Substract the second block position from the first block position
#> Storage
#  @block_pos0 (inout): the first block position
#  @block_pos1 (in): the second block position
#> Return void

# Get first block position values
data modify storage io: block_pos set from storage io: block_pos0
execute store result score ::in x run function minecraft_world_api:block_pos/get_x
execute store result score ::in y run function minecraft_world_api:block_pos/get_y
execute store result score ::in z run function minecraft_world_api:block_pos/get_z

# Get second block position values
data modify storage io: block_pos set from storage io: block_pos1
execute store result score ::minecraft_world_api x run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api y run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api z run function minecraft_world_api:block_pos/get_z

# Substract
scoreboard players operation ::in x -= ::minecraft_world_api x
scoreboard players operation ::in y -= ::minecraft_world_api y
scoreboard players operation ::in z -= ::minecraft_world_api z

# Set values
data modify storage io: block_pos set from storage io: block_pos0
function minecraft_world_api:block_pos/set_x
function minecraft_world_api:block_pos/set_y
function minecraft_world_api:block_pos/set_z
data modify storage io: block_pos0 set from storage io: block_pos
