#
# minecraft_entity_api:entity/set_fire
#
# Set the number of ticks until the fire is put out on a entity. This function will fails if the entity is of player type
#> Scores
#  @fire (in): the number of ticks value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile entity.temp_value short 1.0 run scoreboard players get ::in fire

# Set data
return run data modify entity @s Fire set from storage minecraft_entity_api:volatile entity.temp_value
