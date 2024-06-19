#
# minecraft_entity_api:entity/set_ticks_frozen
#
# Set the number of ticks for which an entity is frozen. This function will fails if the entity is of player type
#> Scores
#  @ticks_frozen (in): number of ticks value
#> Context
#  @executor (in): the entity
#> Return void

# Copy data
execute store result storage minecraft_entity_api:volatile entity.temp_value int 1.0 run scoreboard players get ::in ticks_frozen

# Set data
return run data modify entity @s TicksFrozen set from storage minecraft_entity_api:volatile entity.temp_value
