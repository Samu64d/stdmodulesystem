#
# minecraft_entity_api:item_display_entity/set_item_id
#
# Set the item id of an item display entity
#> Storage
#  @item_id (in): the item id
#> Context
#  @executor (in): the item display entity
#> Return data
#  boolean flag

return run data modify entity @s item.id set from storage io: item_id
