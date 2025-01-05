#
# minecraft_entity_api:item_display_entity/set_item_display
#
# Set the item display of an item display entity
#> Storage
#  @item_display (in): the item display
#> Context
#  @executor (in): the item display entity
#> Return data
#  boolean flag

return run data modify entity @s item_display set from storage io: item_display
