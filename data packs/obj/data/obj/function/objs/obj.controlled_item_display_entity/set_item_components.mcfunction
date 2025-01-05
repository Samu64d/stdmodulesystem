#
# obj:objs/obj.controlled_item_display_entity/set_item_components
#
# Set the item components of a controlled item display entity
#> Scores
#  @item_components (in): the item components
#> Context
#  @executor (in): the controlled item display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:item_display_entity/set_item_components"
function server:selector_entity_list/select_by_string_uuid
