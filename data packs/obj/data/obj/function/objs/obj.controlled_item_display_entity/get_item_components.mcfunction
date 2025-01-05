#
# obj:objs/obj.controlled_item_display_entity/get_item_components
#
# Get the item components of a controlled item display entity
#> Storage
#  @item_components (out): the item components
#> Context
#  @executor (in): the controlled item display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:item_display_entity/get_item_components"
function server:selector_entity_list/select_by_string_uuid
