#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/get_item_id
#
# Get the item id
#> Scores
#  @item_id (out): the item id
#> Context
#  @executor: the item display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/get_item_id"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
