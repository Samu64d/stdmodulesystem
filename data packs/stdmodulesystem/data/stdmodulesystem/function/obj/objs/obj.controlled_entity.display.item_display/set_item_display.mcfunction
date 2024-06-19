#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_item_display
#
# Set the item display
#> Scores
#  @item_display (in): the item display
#> Context
#  @executor: the item display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/set_item_display"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
