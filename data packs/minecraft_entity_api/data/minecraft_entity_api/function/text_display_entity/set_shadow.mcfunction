#
# minecraft_entity_api:text_display_entity/set_shadow
#
# Set the shadow of a text display entity
#> Scores
#  @shadow (in): the shadow
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile text_display_entity.temp_value int 1.0 run scoreboard players get ::in shadow

# Set data
return run data modify entity @s shadow set from storage minecraft_entity_api:volatile text_display_entity.temp_value
