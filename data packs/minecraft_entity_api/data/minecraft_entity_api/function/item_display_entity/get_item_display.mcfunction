#
# minecraft_entity_api:item_display_entity/get_item_display
#
# Get the item display of an item display entity
#> Storage
#  @item_display (out): the item display
#> Context
#  @executor (in): the item display entity
#> Return void

data modify storage io: item_display set from entity @s item_display
