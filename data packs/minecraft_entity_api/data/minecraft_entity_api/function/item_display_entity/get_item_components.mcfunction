#
# minecraft_entity_api:item_display_entity/get_item_components
#
# Get the item components of an item display entity
#> Storage
#  @item_components (out): the item components
#> Context
#  @executor (in): the item display entity
#> Return void

data modify storage io: item_components set from entity @s item.components
