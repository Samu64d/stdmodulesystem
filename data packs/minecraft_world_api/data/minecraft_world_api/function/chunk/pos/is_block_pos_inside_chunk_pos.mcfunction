#
# minecraft_world_api:chunk/pos/is_block_pos_inside_chunk_pos
#
# Check if a block position is inside a chunk localized at a chunk position
#> Storage
#  @chunk_pos (in): the chunk position
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: chunk_pos"
function stdmodulesystem:stack/push

# Get chunk position
function minecraft_world_api:chunk/pos/get_chunk_pos_from_block_pos
data modify storage io: chunk_pos0 set from storage io: chunk_pos

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: chunk_pos"
function stdmodulesystem:stack/pop

# Check if chunk positions are equals
data modify storage io: chunk_pos1 set from storage io: chunk_pos
return run function minecraft_world_api:chunk_pos/are_equals
