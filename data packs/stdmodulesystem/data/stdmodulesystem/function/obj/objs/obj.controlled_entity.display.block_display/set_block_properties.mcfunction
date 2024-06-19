#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/set_block_properties
#
# Set the block properties
#> Scores
#  @block_properties (in): the block properties
#> Context
#  @executor: the block display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/set_block_properties"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
