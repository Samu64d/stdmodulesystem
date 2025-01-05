#
# minecraft_entity_api:text_display_entity/set_text
#
# Set the text of a text display entity
#> Storage
#  @text (in): the text
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

return run data modify entity @s text set from storage io: text
