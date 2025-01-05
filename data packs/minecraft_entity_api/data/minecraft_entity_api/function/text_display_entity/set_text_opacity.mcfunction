#
# minecraft_entity_api:text_display_entity/set_text_opacity
#
# Set the text opacity of a text display entity
#> Scores
#  @text_opacity (in): the text opacity
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile text_display_entity.temp_value int 1.0 run scoreboard players get ::in text_opacity

# Set data
return run data modify entity @s text_opacity set from storage minecraft_entity_api:volatile text_display_entity.temp_value
