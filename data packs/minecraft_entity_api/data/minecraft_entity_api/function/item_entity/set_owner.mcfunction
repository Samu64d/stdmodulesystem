#
# minecraft_entity_api:item_entity/set_owner
#
# Set the owner of an item entity
#> Storage
#  @owner (in): the owner
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

return run data modify entity @s Owner set from storage io: owner
