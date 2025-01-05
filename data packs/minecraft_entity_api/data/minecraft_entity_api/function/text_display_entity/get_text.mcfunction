#
# minecraft_entity_api:text_display_entity/get_text
#
# Get the text of a text display entity
#> Storage
#  @text (out): the text
#> Context
#  @executor (in): the text display entity
#> Return void

data modify storage io: text set from entity @s text
