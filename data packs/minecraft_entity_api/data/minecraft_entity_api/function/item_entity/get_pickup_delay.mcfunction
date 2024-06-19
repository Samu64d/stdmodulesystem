#
# minecraft_entity_api:item_entity/get_pickup_delay
#
# Get the number of ticks an item entity cannot be picked up
#> Context
#  @executor (in): the item entity
#> Return data
#  number of ticks value

return run data get entity @s PickupDelay 1.0
