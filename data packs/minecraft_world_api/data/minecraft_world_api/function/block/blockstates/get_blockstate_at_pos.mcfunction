#
# minecraft_world_api:block/blockstates/get_blockstate_at_pos
#
# Get the blockstate of a block at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @blockstate (out): the block blockstate
#> Return void

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z

# Get block name
function minecraft_world_api:block/api/get_block_name_at_pos

# Get block blockstate property list
function minecraft_world_api:block/blockstates/get_block_blockstate_property_list

# Create blockstate object
data modify storage io: blockstate set value {}

# Iterate through the list
data modify storage io: list_ref set value "storage io: property_list"
data modify storage io: callback set value "minecraft_world_api:block/blockstates/get_blockstate_at_pos/get_property_value"
function collections:referenced_list/for_each
