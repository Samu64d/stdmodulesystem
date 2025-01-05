#
# minecraft_world_api:block/blockstates/set_blockstate_at_pos
#
# Set the blockstate of a block at a world position. This will cause a local block update and only the
# valid properties, considering the sourrounding blocks, will be changed
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @blockstate (in): the block blockstate
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z

# Get block name
function minecraft_world_api:block/api/get_block_name_at_pos

# Get block blockstate property list
function minecraft_world_api:block/blockstates/get_block_blockstate_property_list

# Create blockstate object
data modify storage io: blockstate_string set value ""

# Iterate through the list
data modify storage io: list_ref set value "storage io: property_list"
data modify storage io: callback set value "minecraft_world_api:block/blockstates/set_blockstate_at_pos/read_property_value"
function collections:referenced_list/for_each

# Set
return run function minecraft_world_api:block/blockstates/set_blockstate_at_pos/set with storage io:
