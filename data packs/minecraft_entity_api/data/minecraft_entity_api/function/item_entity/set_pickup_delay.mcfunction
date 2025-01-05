#
# minecraft_entity_api:item_entity/set_pickup_delay
#
# Set the number of ticks an item entity cannot be picked up
#> Scores
#  @pickup_delay (in): the number of ticks value
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile item_entity.temp_value short 1.0 run scoreboard players get ::in pickup_delay

# Set data
return run data modify entity @s PickupDelay set from storage minecraft_entity_api:volatile item_entity.temp_value
