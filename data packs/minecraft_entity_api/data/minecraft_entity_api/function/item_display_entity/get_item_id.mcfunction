#
# minecraft_entity_api:item_display_entity/get_item_id
#
# Get the item id of a item display entity
#> Storage
#  @item_id (out): the item id
#> Context
#  @executor (in): the item display entity
#> Return void

data modify storage io: item_id set from entity @s item.id
