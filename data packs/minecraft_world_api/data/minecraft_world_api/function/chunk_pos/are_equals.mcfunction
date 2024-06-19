#
# minecraft_world_api:chunk_pos/are_equals
#
# Check if two chunk positions are equals
#> Storage
#  @chunk_pos0 (in): the first chunk position
#  @chunk_pos1 (in): the second chunk position
#> Return void

# Get first chunk position values
data modify storage io: chunk_pos set from storage io: chunk_pos0
execute store result score ::minecraft_world_api x0 run function minecraft_world_api:chunk_pos/get_x
execute store result score ::minecraft_world_api z0 run function minecraft_world_api:chunk_pos/get_z

# Get second chunk position values
data modify storage io: chunk_pos set from storage io: chunk_pos1
execute store result score ::minecraft_world_api x1 run function minecraft_world_api:chunk_pos/get_x
execute store result score ::minecraft_world_api z1 run function minecraft_world_api:chunk_pos/get_z

# Check if are equals
execute if score ::minecraft_world_api x0 = ::minecraft_world_api x1 if score ::minecraft_world_api z0 = ::minecraft_world_api z1 run return run scoreboard players get ::const TRUE

# Return data
return run scoreboard players get ::const FALSE
