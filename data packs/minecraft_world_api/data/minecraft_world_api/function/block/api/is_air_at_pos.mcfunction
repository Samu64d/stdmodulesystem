#
# minecraft_world_api:block/api/is_air_at_pos
#
# Check if a block at a world position is air
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::minecraft_world_api::block success = ::const FALSE

# Check for air
data modify storage io: name set value "minecraft:air"
execute if function minecraft_world_api:block/api/is_at_pos run scoreboard players operation ::minecraft_world_api::block success = ::const TRUE

# Check for cave air
data modify storage io: name set value "minecraft:cave_air"
execute if function minecraft_world_api:block/api/is_at_pos run scoreboard players operation ::minecraft_world_api::block success = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::block success
