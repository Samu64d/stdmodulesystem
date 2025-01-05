#
# minecraft_entity_api:item_entity/set_health
#
# Set the health of an item entity
#> Scores
#  @health (in): the health value
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile item_entity.temp_value short 1.0 run scoreboard players get ::in health

# Set data
return run data modify entity @s Health set from storage minecraft_entity_api:volatile item_entity.temp_value
