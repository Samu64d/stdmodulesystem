#
# minecraft_world_api:block/blockstates/has_blockstate_property_at_pos
#
# Check if a block at a world position has a blockstate property
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: property"
function stdmodulesystem:stack/push

# Get block name
function minecraft_world_api:block/api/get_block_name_at_pos

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: property"
function stdmodulesystem:stack/pop

# Get block blockstate property list
function minecraft_world_api:block/blockstates/get_block_blockstate_property_list

# Check if the property list contains the property
data modify storage io: list_ref set value "storage io: property_list"
data modify storage io: element_ref set value "storage io: property"
return run function collections:referenced_list/contains
