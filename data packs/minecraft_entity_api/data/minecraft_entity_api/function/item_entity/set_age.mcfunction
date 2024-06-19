#
# minecraft_entity_api:item_entity/set_age
#
# Set the age in ticks of an item entity
#> Scores
#  @age (in): the age in ticks value
#> Context
#  @executor (in): the item entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile item_entity.temp_value short 1.0 run scoreboard players get ::in age

# Set data
return run data modify entity @s Age set from storage minecraft_entity_api:volatile item_entity.temp_value
