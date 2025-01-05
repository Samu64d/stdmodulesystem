#
# obj:objs/obj.controlled_item_display_entity/get_item_id
#
# Get the item id of a controlled item display entity
#> Storage
#  @item_id (out): the item id
#> Context
#  @executor (in): the controlled item display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:item_display_entity/get_item_id"
function server:selector_entity_list/select_by_string_uuid
