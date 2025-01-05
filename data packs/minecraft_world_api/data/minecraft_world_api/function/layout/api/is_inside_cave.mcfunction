#
# minecraft_world_api:layout/api/is_inside_cave
#
# Check if a world position is inside a cave
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Check for cave air, surface level and return data
data modify storage io: name set value "minecraft:cave_air"
execute if function minecraft_world_api:block/api/is_at_pos unless function minecraft_world_api:layout/api/is_abow_ground run return run scoreboard players get ::const TRUE
return run scoreboard players get ::const FALSE
