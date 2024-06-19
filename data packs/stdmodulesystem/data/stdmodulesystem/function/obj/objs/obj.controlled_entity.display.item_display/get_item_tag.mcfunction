#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/get_item_tag
#
# Get the item tag
#> Scores
#  @item_tag (out): the item tag
#> Context
#  @executor: the item display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/get_item_tag"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
