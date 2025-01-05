#
# minecraft_entity_api:item_display_entity/set_item_components
#
# Set the item components of an item display entity
#> Storage
#  @item_components (in): the item components
#> Context
#  @executor (in): the item display entity
#> Return data
#  boolean flag

return run data modify entity @s item.components set from storage io: item_components
