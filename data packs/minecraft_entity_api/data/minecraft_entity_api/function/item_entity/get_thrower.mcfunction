#
# minecraft_entity_api:item_entity/get_thrower
#
# Get the thrower of an item entity
#> Storage
#  @thrower (out): the thrower
#> Context
#  @executor (in): the item entity
#> Return void

data modify storage io: thrower set from entity @s Thrower
