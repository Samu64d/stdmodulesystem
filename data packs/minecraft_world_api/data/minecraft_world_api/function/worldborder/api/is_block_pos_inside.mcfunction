#
# minecraft_world_api:worldborder/api/is_block_pos_inside
#
# Check if a block position is inside the world border
# This will work only if the world border is centered at (0.5, 0.5) of the world
#> Storage
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Get the absolute value of x
execute store result score ::in value run function minecraft_world_api:block_pos/get_x
execute if score ::in value matches ..-1 run scoreboard players add ::in value 1
execute store result score ::minecraft_world_api::worldborder x run function math:abs

# Get the absolute value of z
execute store result score ::in value run function minecraft_world_api:block_pos/get_z
execute if score ::in value matches ..-1 run scoreboard players add ::in value 1
execute store result score ::minecraft_world_api::worldborder z run function math:abs

# Calculate the border radius
function minecraft_world_api:worldborder/api/get_size
execute store result score ::minecraft_world_api::worldborder r run data get storage io: size 1.0
scoreboard players operation ::minecraft_world_api::worldborder r /= ::int 2

# Check position
scoreboard players operation ::minecraft_world_api::worldborder is_inside = ::const TRUE
execute if score ::minecraft_world_api::worldborder x >= ::minecraft_world_api::worldborder r run scoreboard players operation ::minecraft_world_api::worldborder is_inside = ::const FALSE
execute if score ::minecraft_world_api::worldborder z >= ::minecraft_world_api::worldborder r run scoreboard players operation ::minecraft_world_api::worldborder is_inside = ::const FALSE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder is_inside
