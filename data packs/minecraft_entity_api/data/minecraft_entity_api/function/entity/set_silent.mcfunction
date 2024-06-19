#
# mineweather:server/entity/set_silent
#
# Set an entity silent. This function will fails if the entity is of player type
#> Scores
#  @silent (in): boolean flag
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile entity.temp_value byte 1.0 run scoreboard players get ::in silent

# Set data
return run data modify entity @s Silent set from storage minecraft_entity_api:volatile entity.temp_value
