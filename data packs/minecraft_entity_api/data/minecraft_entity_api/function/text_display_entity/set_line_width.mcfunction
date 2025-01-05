#
# minecraft_entity_api:text_display_entity/set_line_width
#
# Set the line width of a text display entity
#> Scores
#  @line_width (in): the line width
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile text_display_entity.temp_value int 1.0 run scoreboard players get ::in line_width

# Set data
return run data modify entity @s line_width set from storage minecraft_entity_api:volatile text_display_entity.temp_value
