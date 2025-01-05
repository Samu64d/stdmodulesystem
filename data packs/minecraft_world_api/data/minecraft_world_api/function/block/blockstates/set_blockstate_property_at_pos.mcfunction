#
# minecraft_world_api:block/blockstates/set_blockstate_property_at_pos
#
# Set a blockstate property of a block at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#  @property_value (in): the block blockstate property value
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: property"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: property_value"
function stdmodulesystem:stack/push

# Get the blockstate object
function minecraft_world_api:block/blockstates/get_blockstate_at_pos

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: property_value"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: property"
function stdmodulesystem:stack/pop

# Set the property
function minecraft_world_api:block/blockstates/set_blockstate_property_at_pos/set_property_value with storage io:

# Set the blockstate object
return run function minecraft_world_api:block/blockstates/set_blockstate_at_pos
