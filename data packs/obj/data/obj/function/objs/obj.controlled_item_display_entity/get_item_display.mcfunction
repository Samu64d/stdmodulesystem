#
# obj:objs/obj.controlled_item_display_entity/get_item_display
#
# Get the item display of a controlled item display entity
#> Storage
#  @item_display (out): the item display
#> Context
#  @executor (in): the controlled item display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:item_display_entity/get_item_display"
function server:selector_entity_list/select_by_string_uuid
