#
# minecraft_entity_api:text_display_entity/set_background
#
# Set the background of a text display entity
#> Scores
#  @background (in): the background
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile text_display_entity.temp_value int 1.0 run scoreboard players get ::in background

# Set data
return run data modify entity @s background set from storage minecraft_entity_api:volatile text_display_entity.temp_value
