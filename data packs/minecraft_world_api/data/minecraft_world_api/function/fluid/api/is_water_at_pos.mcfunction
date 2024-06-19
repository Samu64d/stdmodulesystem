#
# minecraft_world_api:fluid/api/is_water_at_pos
#
# Check if a fluid at a world position is water
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Check for water
data modify storage io: name set value "minecraft:water"
execute if function minecraft_world_api:block/api/is_at_pos run return run scoreboard players get ::const TRUE

# Check for waterlogged block
data modify storage io: property set value "waterlogged"
execute if function minecraft_world_api:block/blockstates/has_blockstate_property_at_pos if function minecraft_world_api:block/blockstates/get_blockstate_property_at_pos_as_boolean run return run scoreboard players get ::const TRUE

# Return data
return run scoreboard players get ::const FALSE
