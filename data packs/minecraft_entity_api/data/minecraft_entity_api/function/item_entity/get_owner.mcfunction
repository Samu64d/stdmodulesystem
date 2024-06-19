#
# minecraft_entity_api:item_entity/get_owner
#
# Get the owner of an item entity
#> Storage
#  @owner (out): the owner
#> Context
#  @executor (in): the item entity
#> Return void

data modify storage io: owner set from entity @s Owner
