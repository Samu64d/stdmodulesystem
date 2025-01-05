#
# minecraft_entity_api:text_display_entity/get_alignment
#
# Get the alignment of a text display entity
#> Storage
#  @alignment (out): the alignment
#> Context
#  @executor (in): the text display entity
#> Return void

data modify storage io: alignment set from entity @s alignment
