#
# minecraft_entity_api:item_entity/get_item
#
# Get the item of an item entity
#> Storage
#  @item (out): the item data
#> Context
#  @executor (in): the item entity
#> Return void

data modify storage io: item set from entity @s Item
