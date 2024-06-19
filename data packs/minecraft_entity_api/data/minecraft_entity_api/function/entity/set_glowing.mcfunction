#
# minecraft_entity_api:entity/set_glowing
#
# Set an entity glowing. This function will fails if the entity is of player type
#> Scores
#  @glowing (in): boolean flag
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile entity.temp_value byte 1.0 run scoreboard players get ::in glowing

# Set data
return run data modify entity @s Glowing set from storage minecraft_entity_api:volatile entity.temp_value
