#
# minecraft_entity_api:text_display_entity/set_see_through
#
# Set the see through of a text display entity
#> Scores
#  @see_through (in): the see through
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile text_display_entity.temp_value int 1.0 run scoreboard players get ::in see_through

# Set data
return run data modify entity @s see_through set from storage minecraft_entity_api:volatile text_display_entity.temp_value
