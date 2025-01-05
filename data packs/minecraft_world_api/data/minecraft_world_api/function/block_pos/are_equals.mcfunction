#
# minecraft_world_api:block_pos/are_equals
#
# Check if two block positions are equals
#> Storage
#  @block_pos0 (in): the first block position
#  @block_pos1 (in): the second block position
#> Return void

# Get first block position values
data modify storage io: block_pos set from storage io: block_pos0
execute store result score ::minecraft_world_api x0 run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api y0 run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api z0 run function minecraft_world_api:block_pos/get_z

# Get second block position values
data modify storage io: block_pos set from storage io: block_pos1
execute store result score ::minecraft_world_api x1 run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api y1 run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api z1 run function minecraft_world_api:block_pos/get_z

# Check if are equals
execute if score ::minecraft_world_api x0 = ::minecraft_world_api x1 if score ::minecraft_world_api y0 = ::minecraft_world_api y1 if score ::minecraft_world_api z0 = ::minecraft_world_api z1 run return run scoreboard players get ::const TRUE

# Return data
return run scoreboard players get ::const FALSE
