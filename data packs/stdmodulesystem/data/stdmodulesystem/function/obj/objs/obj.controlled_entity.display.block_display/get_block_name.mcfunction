#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/get_block_name
#
# Get the block name
#> Scores
#  @block_name (out): the block name
#> Context
#  @executor: the block display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/get_block_name"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
