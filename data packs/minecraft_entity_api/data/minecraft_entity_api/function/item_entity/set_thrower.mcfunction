#
# minecraft_entity_api:item_entity/set_thrower
#
# Set the thrower of an item entity
#> Storage
#  @thrower (in): the thrower
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

return run data modify entity @s Thrower set from storage io: thrower
