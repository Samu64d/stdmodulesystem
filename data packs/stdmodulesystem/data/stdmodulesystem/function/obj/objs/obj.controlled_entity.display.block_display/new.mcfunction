#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/new
#
# Create a new block display
#> Storage
#  @block_state (in): the block state
#> Return void

# Super
function stdmodulesystem:obj/objs/obj.controlled_entity.display/new

# Create block display entity
function stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/create

# Set pointer
data modify entity @s data.controlled_entity set from storage io: entity_pointer
