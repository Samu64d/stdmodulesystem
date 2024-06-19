#
# minecraft_world_api:chunk_pos/add
#
# Add the second chunk position to the first chunk position
#> Storage
#  @chunk_pos0 (inout): the first chunk position
#  @chunk_pos1 (in): the second chunk position
#> Return void

# Get first chunk position values
data modify storage io: chunk_pos set from storage io: chunk_pos0
execute store result score ::in x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::in z run function minecraft_world_api:chunk_pos/get_z

# Get second chunk position values
data modify storage io: chunk_pos set from storage io: chunk_pos1
execute store result score ::minecraft_world_api x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::minecraft_world_api z run function minecraft_world_api:chunk_pos/get_z

# Sum
scoreboard players operation ::in x += ::minecraft_world_api x
scoreboard players operation ::in z += ::minecraft_world_api z

# Set values
data modify storage io: chunk_pos set from storage io: chunk_pos0
function minecraft_world_api:chunk_pos/set_x
function minecraft_world_api:chunk_pos/set_z
data modify storage io: chunk_pos0 set from storage io: chunk_pos
