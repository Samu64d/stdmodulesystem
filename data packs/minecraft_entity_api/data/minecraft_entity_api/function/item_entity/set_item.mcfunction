#
# minecraft_entity_api:item_entity/set_item
#
# Set the item of an item entity
#> Storage
#  @item (in): the item data
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

return run data modify entity @s Item set from storage io: item
