#
# minecraft_world_api:block/blockstates/get_blockstate_property_at_pos
#
# Get a blockstate property of a block at a world position. Return false if the block has not the property
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#  @property_value (out): the block blockstate property value
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z

# Default to null
data modify storage io: property_value set value "null"
data modify storage minecraft_world_api:volatile block.temp_property_value set value "null"

# Get the property
function minecraft_world_api:block/blockstates/get_blockstate_property_at_pos/get_property_value with storage io:

# Return data
return run data modify storage minecraft_world_api:volatile block.temp_property_value set from storage io: property_value
